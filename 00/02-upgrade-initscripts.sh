#!/bin/bash
# 02-upgrade-initscripts.sh: See https://www.archlinux.org/news/initscripts-update-manual-intervention-required/
mv --interactive /etc/profile.d/locale.sh ~
pacman --sync initscripts
