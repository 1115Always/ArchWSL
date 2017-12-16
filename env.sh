#!/bin/bash

ARCH="x86_64"
ROOTFS_VER="2017.12.01"
ROOTFS_FN="archlinux-bootstrap-${ROOTFS_VER}-${ARCH}.tar.gz"
ROOTFS_URL="http://mirrors.kernel.org/archlinux/iso/${ROOTFS_VER}/${ROOTFS_FN}"

FRTCP_BLD="17121600"
FRTCP_VER="1.22-1"
FRTCP_FN="fakeroot-tcp-${FRTCP_VER}-${ARCH}.pkg.tar.xz"
FRTCP_URL="https://github.com/yuk7/arch-prebuilt/releases/download/${FRTCP_BLD}/${FRTCP_FN}"

LNCR_BLD="17121601"
LNCR_ZIP="icons.zip"
LNCR_FN="Arch.exe"
LNCR_URL="https://github.com/yuk7/WSL-DistroLauncher/releases/download/${LNCR_BLD}/${LNCR_ZIP}"

PAC_PKGS="bzip2 coreutils diffutils gawk gcc-libs gettext grep gzip inetutils iproute2 iputils less man-db man-pages nano sed sudo tar vi vim wget which"

if type curl >/dev/null 2>&1 ;then
    DLR="curl"
fi
if type wget >/dev/null 2>&1;then
    DLR="wget"
fi
if type aria2c >/dev/null 2>&1; then
    DLR="aria2c -x4"
fi


