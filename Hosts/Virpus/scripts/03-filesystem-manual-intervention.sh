#!/bin/bash
set -o verbose
# See http://www.archlinux.org/news/filesystem-upgrade-manual-intervention-required/
ls -l /etc/mtab
pacman --sync filesystem --force
