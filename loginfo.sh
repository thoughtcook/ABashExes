#!/bin/bash
echo "Record Date and time, the online users, and uptime."

LOGFILE=~/Documents/sys.log

rm -fr $LOGFILE

echo "==================date&time=====================" >> $LOGFILE
date >> $LOGFILE

echo >> $LOGFILE

echo "=============The users online====================" >> $LOGFILE

who >> $LOGFILE

echo >> $LOGFILE

echo "=============The system uptime===================" >> $LOGFILE
uptime >> $LOGFILE

