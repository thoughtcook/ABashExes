#! /bin/bash
# Find the largest file in a directory using a recrusive way.

FILEDIR=/usr/src/linux

du -ach | sort -n | head -n 5
