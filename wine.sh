#!/data/data/com.termux/files/usr/bin/bash

pkg update 
pkg upgrade -y
pkg install -y tur-repo
pkg install -y \
    freetype gnutls libandroid-shmem-static \
    libx11 xorgproto libdrm libpixman libxfixes libjpeg-turbo \
    mesa-demos osmesa pulseaudio termux-x11-nightly vulkan-tools xtrans \
    libxxf86vm xorg-xrandr xorg-font-util xorg-util-macros libxfont2 \
    libxkbfile libpciaccess xcb-util-renderutil xcb-util-image \
    xcb-util-keysyms xcb-util-wm xorg-xkbcomp xkeyboard-config \
    libxdamage libxinerama libxshmfence mousepad stracer
pkg install -y  vulkan-loader-android mesa-zink
pkg install -y mesa-vulkan-icd-freedreno mesa-zink
pkg install -y glibc-repo
pkg install -y glibc-runner
pkg install -y mesa-vulkan-icd-freedreno-glibc mangohud-glibc \
    mesa-zink-glibc box64-glibc vulkan-volk-glibc
pkg install -y \
    libxcb-glibc libxcomposite-glibc libxcursor-glibc libxfixes-glibc \
    libxrender-glibc libgcrypt-glibc libgpg-error-glibc libice-glibc \
    libsm-glibc libxau-glibc libxcrypt-glibc libxdmcp-glibc \
    libxext-glibc libxinerama-glibc libxkbfile-glibc libxml2-glibc
pkg install -y pulseaudio-glibc libx*-*glibc*
pkg install -y libgmp-glibc
pkg install -y fex
pkg install -y mesa-zink-dev virglrenderer-mesa-zink* virgl_test_server* \
    libandroid-shmem-static libx11 xorgproto libdrm libpixman libxfixes \
    libjpeg-turbo mesa-demos osmesa  \
    xtrans libxxf86vm xorg-xrandr xorg-font-util xorg-util-macros libxfont2 \
    libxkbfile libpciaccess xcb-util-renderutil xcb-util-image xcb-util-keysyms \
    xcb-util-wm xorg-xkbcomp xkeyboard-config libxdamage libxinerama libxshmfence
pkg install -y virglrenderer-mesa-zink box64-glibc vulkan-volk-glibc
pip install psutil

