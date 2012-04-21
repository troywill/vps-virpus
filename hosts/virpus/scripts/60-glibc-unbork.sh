#!/bin/bash
set -o errexit
set -o nounset

FILE="glibc-2.15-102-i686.pkg.tar.xz"
wget --no-clobber http://dev.archlinux.org/~ibiru/openvz/glibc-vps/i686/${FILE}
tar -xvf ${FILE} --directory /
