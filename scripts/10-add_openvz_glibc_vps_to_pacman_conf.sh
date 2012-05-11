#!/bin/bash
set -o errexit
set -o nounset
# 05-add-openvz_glibc_vps_to_pacman_conf.sh: A simple shell script to upgrade pacman on a new Virups VPS.
# troydwill@gmail.com April 19, 2012. Run as root
# Primary reference: https://wiki.archlinux.org/index.php/Virtual_Private_Server

mkdir --verbose --parent BACKUPS
cp --verbose --backup=numbered /etc/pacman.conf "BACKUPS/"
cp --verbose --interactive etc/2.pacman.conf.glib-vps.1 /etc/pacman.conf

# [openvz-tdw]
# http://packages.shilohsystem.com/openvz-tdw/
