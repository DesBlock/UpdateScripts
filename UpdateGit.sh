#!/bin/bash
#Assumes all git projects are stored in /opt/ dir.
GitDirs = /opt/
find GitDirs -name .git -printf '%h:\t\t\t' -execdir git pull \;
