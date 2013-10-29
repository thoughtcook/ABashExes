#! /bin/bash
# Find the largest file in a directory using a recrusive way.

FILEDIR=/usr/src/linux/Documentation

cd $FILEDIR

ls -l | awk '{print $5, $9}' | sort -n -r | head -n 5
