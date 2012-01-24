#!/bin/bash
# See http://www.archlinux.org/news/filesystem-upgrade-manual-intervention-required/
ls -l /etc/mtab
pacman --sync filesystem --force

