#!/bin/bash
#Remember to change "Info" to the data you want to pull from grep.
#Remember to check delimiter numbers and posiitons
#Remember to change host to the first three "x" to the range you are scanning!

for ip in $(seq  72 91);do
	host x.x.x.$ip |grep "Info" |cut -d" " -f1,5
done
