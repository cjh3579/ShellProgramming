#!/bin/bash

cat user.list | while read UNAME UPASS
do
	useradd $UNAME
	echo $UPASS | passwd --stdin $UNAME
done 