#!/bin/bash
echo "Record Date and time, the online users, and uptime."

rm -fr loginfo.log

echo "==================date&time=====================" >> loginfo.log
date >> loginfo.log

echo >> loginfo.log

echo "=============The users online====================" >> loginfo.log

who >> loginfo.log

echo >> loginfo.log

echo "=============The system uptime===================" >> loginfo.log
uptime >> loginfo.log

