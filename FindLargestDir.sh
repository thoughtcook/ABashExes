#! /bin/bash
# Find the largest file in a directory using a recrusive way.

FILEDIR=/usr/src/linux

cd $FILEDIR

du -ach | sort -r -n | head -n 50
