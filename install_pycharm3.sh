#!/data/data/com.termux/files/usr/bin/bash

# PyCharm 설치 스크립트 (상태 확인 기능 추가)
# 이미 완료된 작업은 건너뛰고 필요한 작업만 수행합니다.

# --- 설정 ---
PYCHARM_URL="https://download.jetbrains.com/python/pycharm-2025.2-aarch64.tar.gz"
DOWNLOAD_FILE=$(basename $PYCHARM_URL)
INSTALL_DIR="/opt/pycharm"
EXTRACT_PARENT_DIR="/opt"

# 'prun'은 'proot-distro login ubuntu --'의 단축 별칭(alias)으로 가정합니다.
# 만약 별칭이 설정되어 있지 않다면 'prun' 대신 전체 명령어를 사용해야 합니다.

# --- 1. 최종 설치 상태 확인 ---
# 심볼릭 링크와 바로가기 파일이 모두 존재하면 이미 설치된 것으로 간주합니다.
if prun [ -L "$INSTALL_DIR" ] && [ -f "$PREFIX/share/applications/pycharm.desktop" ]; then
    echo "✅ PyCharm이 이미 최신 상태로 설치되어 있습니다. 스크립트를 종료합니다."
    exit 0
fi

echo "### PyCharm 설치 및 상태 확인을 시작합니다. ###"

# --- 2. 시스템 업데이트 및 의존성 설치 ---
# 이 단계는 매번 실행해도 무방하며, 시스템을 최신 상태로 유지합니다.
echo "--- 1/5: 패키지 목록 업데이트 및 의존성 설치..."
prun sudo apt-get update
prun sudo apt-get install -y wget libxi6 libxrender1 libxtst6 gpg

# --- 3. PyCharm 다운로드 확인 및 실행 ---
if prun [ ! -f "$DOWNLOAD_FILE" ]; then
    echo "--- 2/5: PyCharm 압축 파일을 다운로드합니다..."
    prun wget "$PYCHARM_URL" -O "$DOWNLOAD_FILE"

    # 다운로드 성공 여부 재확인
    if ! prun [ -f "$DOWNLOAD_FILE" ]; then
        echo "❗️ 다운로드에 실패했습니다. URL과 네트워크 연결을 확인해주세요."
        exit 1
    fi
else
    echo "--- 2/5: PyCharm 압축 파일이 이미 존재합니다. 다운로드를 건너뜁니다."
fi

# --- 4. PyCharm 압축 해제 확인 및 실행 ---
# 압축 파일 내용을 기반으로 압축 해제될 폴더 이름을 확인합니다.
EXTRACTED_DIR_NAME=$(prun tar -tf "$DOWNLOAD_FILE" | head -n 1 | cut -f1 -d"/")

if prun [ ! -d "$EXTRACT_PARENT_DIR/$EXTRACTED_DIR_NAME" ]; then
    echo "--- 3/5: PyCharm 압축을 해제합니다..."
    prun sudo tar -xzf "$DOWNLOAD_FILE" -C "$EXTRACT_PARENT_DIR"
else
    echo "--- 3/5: PyCharm이 이미 압축 해제되어 있습니다. 이 단계를 건너뜁니다."
fi

# --- 5. 심볼릭 링크 생성 ---
echo "--- 4/5: 심볼릭 링크를 생성/업데이트합니다..."
# 'ln -sfn' 옵션은 기존에 잘못된 링크나 파일이 있어도 강제로 덮어쓰고 올바른 심볼릭 링크를 생성합니다.
prun sudo ln -sfn "$EXTRACT_PARENT_DIR/$EXTRACTED_DIR_NAME" "$INSTALL_DIR"
echo "    -> 심볼릭 링크 설정 완료: $INSTALL_DIR -> $EXTRACT_PARENT_DIR/$EXTRACTED_DIR_NAME"

# --- 6. 바로가기 아이콘 생성 ---
if [ ! -f "$PREFIX/share/applications/pycharm.desktop" ]; then
    echo "--- 5/5: 애플리케이션 바로가기를 생성합니다..."
    echo "[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm
Comment=The Python IDE for Professional Developers
Icon=${INSTALL_DIR}/bin/pycharm.png
Exec=prun ${INSTALL_DIR}/bin/pycharm.sh %f
Categories=Development;IDE;Python;
Terminal=false
StartupNotify=true
StartupWMClass=jetbrains-pycharm
" > $HOME/Desktop/pycharm.desktop

    chmod +x $HOME/Desktop/pycharm.desktop
    cp $HOME/Desktop/pycharm.desktop $PREFIX/share/applications/pycharm.desktop
else
    echo "--- 5/5: 애플리케이션 바로가기가 이미 존재합니다. 이 단계를 건너뜁니다."
fi

# --- 7. 설치 완료 후 정리 ---
# 모든 과정이 성공적으로 끝나면 다운로드했던 압축 파일을 삭제하여 공간을 확보합니다.
prun rm "$DOWNLOAD_FILE"

echo "🎉 PyCharm 설치 및 확인이 모두 완료되었습니다!"