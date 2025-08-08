#!/data/data/com.termux/files/usr/bin/bash

# PyCharm 설치 스크립트 (aarch64)
# - proot 환경에서 설치 수행 (`prun` 사용)
# - `/opt`에 압축 해제 후 `/usr/local/bin/pycharm` 심볼릭 링크 생성
# - Termux 쪽에 `.desktop` 파일 생성하여 실행 아이콘 제공

PRJ_URL="https://download.jetbrains.com/python/pycharm-2025.2-aarch64.tar.gz"

# 기존 설치 흔적 제거 (심볼릭 링크 및 구 버전 디렉토리)
prun sudo rm -f /usr/local/bin/pycharm
prun sudo rm -rf /opt/pycharm-*

# 다운로드 및 설치
prun wget "$PRJ_URL" -O pycharm.tar.gz
prun sudo tar -xzf ./pycharm.tar.gz -C /opt
prun rm -f ./pycharm.tar.gz

# 실행 심볼릭 링크 설정 (가장 최근 버전을 가리키도록 와일드카드 사용)
prun bash -lc 'sudo ln -sf /opt/pycharm-*/bin/pycharm.sh /usr/local/bin/pycharm'

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


