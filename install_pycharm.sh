#!/data/data/com.termux/files/usr/bin/bash

# PyCharm 설치 스크립트 (aarch64)
# - proot 환경에서 설치 수행 (`prun` 사용)
# - `/opt`에 압축 해제 후 `/usr/local/bin/pycharm` 심볼릭 링크 생성
# - Termux 쪽에 `.desktop` 파일 생성하여 실행 아이콘 제공

PRJ_URL="https://download.jetbrains.com/python/pycharm-2025.2-aarch64.tar.gz"

# 안전 설치 루틴 (인용부호 이슈 회피)
prun bash -lc 'set -euo pipefail
  cat > /tmp/install-pycharm-inner.sh << "EOF"
#!/usr/bin/env bash
set -euo pipefail

if command -v sudo >/dev/null 2>&1; then
  if [ "$(id -u)" -ne 0 ]; then SUDO="sudo -n"; else SUDO=""; fi
else
  SUDO=""
fi

echo "기존 PyCharm 설치 흔적을 정리할게요."
$SUDO rm -f /usr/local/bin/pycharm || true
$SUDO rm -rf /opt/pycharm-* || true

TAR_PATH=/tmp/pycharm-2025.2-aarch64.tar.gz
URL="https://download.jetbrains.com/python/pycharm-2025.2-aarch64.tar.gz"

if [ -f "$TAR_PATH" ]; then
  echo "이미 다운로드된 파일을 확인했어요. 무결성을 검사할게요."
  if tar -tzf "$TAR_PATH" >/dev/null 2>&1; then
    echo "기존 파일을 재사용할게요."
  else
    echo "기존 파일이 손상되었어요. 다시 다운로드할게요."
    rm -f "$TAR_PATH"
    wget -q "$URL" -O "$TAR_PATH"
  fi
else
  echo "압축 파일을 다운로드할게요."
  wget -q "$URL" -O "$TAR_PATH"
fi

echo "/opt 디렉토리에 설치할게요."
$SUDO mkdir -p /opt
$SUDO tar -xzf "$TAR_PATH" -C /opt

latest_dir=$(ls -d /opt/pycharm-* 2>/dev/null | sort -V | tail -n1)
if [ -z "$latest_dir" ]; then echo "설치 디렉토리를 찾지 못했어요."; exit 1; fi

echo "실행 심볼릭 링크를 생성할게요."
$SUDO ln -sf "$latest_dir/bin/pycharm.sh" /usr/local/bin/pycharm
EOF
  chmod +x /tmp/install-pycharm-inner.sh
  bash /tmp/install-pycharm-inner.sh
  rm -f /tmp/install-pycharm-inner.sh'

# 아래 블록은 here-doc 방식으로 대체되었어요 (중복 실행 방지 위해 제거)

# Desktop Entry 생성 (Termux 홈 경로 기준)
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=PyCharm
Comment=Python IDE
Exec=prun pycharm
Icon=pycharm
Categories=Development;
Path=
Terminal=true
StartupNotify=false
" > $HOME/Desktop/pycharm.desktop

chmod +x $HOME/Desktop/pycharm.desktop
cp $HOME/Desktop/pycharm.desktop $PREFIX/share/applications/pycharm.desktop


