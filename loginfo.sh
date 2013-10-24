#!/bin/bash
echo "Record Date and time, the online users, and uptime."

date >> loginfo.log

who >> loginfo.log

uptime >> loginfo.log

