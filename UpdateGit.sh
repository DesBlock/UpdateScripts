#!/bin/bash
#Assumes all git projects are stored in /opt/ dir.
GitDirs=/opt/
find $GitDirs -name .git -printf "%-50h " -execdir git pull \;
