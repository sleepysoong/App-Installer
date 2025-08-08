#!/data/data/com.termux/files/usr/bin/bash

# PyCharm 설치 스크립트 (aarch64)
# - proot 환경에서 설치 수행 (`prun` 사용)
# - `/opt`에 압축 해제 후 `/usr/local/bin/pycharm` 심볼릭 링크 생성
# - Termux 쪽에 `.desktop` 파일 생성하여 실행 아이콘 제공

PRJ_URL="https://download.jetbrains.com/python/pycharm-2025.2-aarch64.tar.gz"

# 다운로드 및 설치 전 과정을 루트/비루트 환경에 맞춰 수행
prun bash -lc "set -euo pipefail; \
  if command -v sudo >/dev/null 2>&1; then \
    if [ \$(id -u) -ne 0 ]; then SUDO='sudo -n'; else SUDO=''; fi; \
  else \
    SUDO=''; \
  fi; \
  echo '기존 `PyCharm` 설치 흔적을 정리할게요.'; \
  \$SUDO rm -f /usr/local/bin/pycharm || true; \
  \$SUDO rm -rf /opt/pycharm-* || true; \
  TAR_PATH=/tmp/pycharm-2025.2-aarch64.tar.gz; \
  if [ -f "\$TAR_PATH" ]; then \
    echo '이미 다운로드된 파일을 확인했어요. 무결성을 검사할게요.'; \
    if tar -tzf "\$TAR_PATH" >/dev/null 2>&1; then \
      echo '기존 파일을 재사용할게요.'; \
    else \
      echo '기존 파일이 손상되었어요. 다시 다운로드할게요.'; \
      rm -f "\$TAR_PATH"; \
      wget '$PRJ_URL' -O "\$TAR_PATH"; \
    fi; \
  else \
    echo '압축 파일을 다운로드할게요.'; \
    wget '$PRJ_URL' -O "\$TAR_PATH"; \
  fi; \
  echo '/opt 디렉토리에 설치할게요.'; \
  \$SUDO mkdir -p /opt; \
  \$SUDO tar -xzf "\$TAR_PATH" -C /opt; \
  latest_dir=\$(ls -d /opt/pycharm-* 2>/dev/null | sort -V | tail -n1); \
  if [ -z "\$latest_dir" ]; then echo '설치 디렉토리를 찾지 못했어요.'; exit 1; fi; \
  echo '실행 심볼릭 링크를 생성할게요.'; \
  \$SUDO ln -sf "\$latest_dir/bin/pycharm.sh" /usr/local/bin/pycharm \
"

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


