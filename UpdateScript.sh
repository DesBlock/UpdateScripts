#!/bin/bash
#GitFile = ./UpdateGit.sh
GitFile="$(cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )"
GitFile="$GitFile/UpdateGit.sh"
apt clean && apt update -y && apt full-upgrade -y && apt autoremove -y
if test -e "$GitFile"; then
    su -c "$GitFile" "$SUDO_USER"
else
    echo "FAILED TO UPDATE GIT REPOS"
fi
