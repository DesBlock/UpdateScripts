#!/bin/bash
#GitFile = ./UpdateGit.sh
GitFile="$(cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
GitFile="$GitFile/UpdateGit.sh"
apt clean && apt update -y && apt full-upgrade -y && apt autoremove -y
if test -f "$GitFile"; then
    `echo $GitFile`
fi
