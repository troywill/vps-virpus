#!/bin/bash
set -o errexit
set -o nounset

# 01-upgrade-pacman.sh: A very simple shell script to upgrade pacman on a new Fanatical VPS.
# troydwill@gmail.com Jan 21, 2012

# Primary reference: https://wiki.archlinux.org/index.php/Virtual_Private_Server
# Secondary reference: http://wiki.fanaticalvps.com/tutorial:archlinux

EDITOR='emacs'
PACMAN_CONF='/etc/pacman.conf'
MIRRORLIST='/etc/pacman.d/mirrorlist'

${EDITOR} ${PACMAN_CONF}
${EDITOR} ${MIRRORLIST}

pacman --sync --refresh
pacman --sync pacman --force
# Targets (20): linux-api-headers-3.1.6-1  glibc-2.15-99  xz-5.0.3-1  libarchive-3.0.3-2  run-parts-4.0.4-1
# ca-certificates-20111211-1  libssh2-1.3.0-1  curl-7.23.1-2  pth-2.0.7-4  libsasl-2.1.23-9  libldap-2.4.28-2
# libusb-compat-0.1.3-2  gnupg-1.4.11-3  libksba-1.2.0-1  libassuan-2.0.3-1  pinentry-0.8.1-3  dirmngr-1.1.0-3
# gnupg2-2.0.18-1  gpgme-1.3.1-2  pacman-4.0.1-4  

cp --backup --verbose ${PACMAN_CONF} /tmp
${EDITOR} /etc/pacman.conf.pacnew
cp --interactive /etc/pacman.conf.pacnew /etc/pacman.conf
pacman-db-upgrade
pacman --sync --refresh

exit

#####################################################
From http://wiki.fanaticalvps.com/tutorial:archlinux:

x86
Insert this right above where you see [core]

[glibc-vps]
Server = http://dev.archlinux.org/~ibiru/openvz/glibc-vps/i686/

x86_64
Same as above, except with a different URL, insert this right above [core]

[glibc-vps] 
Server = http://dev.archlinux.org/~ibiru/openvz/glibc-vps/x86_64/
