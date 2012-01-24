#!/bin/bash
# See https://www.archlinux.org/news/initscripts-update-manual-intervention-required/
mv --interactive /etc/profile.d/locale.sh /tmp
pacman --sync initscripts
