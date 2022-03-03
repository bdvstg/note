#!/bin/bash

# when ntp not avaliable
# use wget to fetch a webpage, update system date by the date of the webpage

httpdate=$(wget --no-cache -S -O /dev/null google.com 2>&1 | sed -n -e 's/  *Date: *//p' -eT -eq)

if [ -n "$httpdate" ];then
    echo "sync system date to $httpdate"
    date -s "$httpdate"
    echo "curreent datetime is $(date)"
    exit $?
else
    echo "failed to get date from google, do nothing"
    exit 1
fi