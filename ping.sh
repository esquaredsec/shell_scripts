#!/bin/bash
if [ "$1" == "" ]
then
echo "Usage: ./ping.sh [network]"
echo "Example: ./ping.sh 10.11.1"
else
for X in `seq 1 254`; do
ping -c 1 $1.$X | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
fi
