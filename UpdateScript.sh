#!/bin/bash
GitFile = /opt/UpdateGit.sh
apt clean && apt update -y && apt full-upgrade -y && apt autoremove -y
if test -f $GitFile; then
    $GitFile
