#!/bin/bash
set -o errexit
set -o nounset
# 01-upgrade-pacman.sh: A simple shell script to upgrade pacman on a new Virups VPS.
# troydwill@gmail.com April 19, 2012
# Primary reference: https://wiki.archlinux.org/index.php/Virtual_Private_Server

pacman --sync --refresh

rm -v /usr/bin/tzselect
rm -v /usr/sbin/zdump
rm -v /usr/sbin/zic

pacman --sync pacman

cp -iv /etc/pacman.conf.pacnew /etc/pacman.conf

pacman-db-upgrade
pacman --sync --refresh
