#!/bin/bash
set -o errexit
set -o nounset

cat <<EOF
[openvz-tdw]
Server = http://packages.shilohsystem.com/openvz-tdw/i686

[openvz-tdw]
Server = http://packages.shilohsystem.com/openvz-tdw/x6_64

EOF
