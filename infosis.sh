#!/bin/bash


echo "HORA:"
cat /proc/driver/rtc | grep "rtc_time*" | grep "[0-9]*:[0-9]*:[0-9]*" -o
echo "FECHA"
cat /proc/driver/rtc | grep "rtc_date*" | grep "[0-9]*-[0-9]*-[0-9]*" -o


exit
