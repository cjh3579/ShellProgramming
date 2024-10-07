#!/bin/bash

# HOSTS=/etc/hosts
HOSTS=hosts
NET=172.16.6

C_IP=$(ifconfig eth192 | grep 'inet addr:' | awk '{print $2}' | awk -F. '{print $4}')

for i in $(seq 200 230)
do
        [ $C_IP = $i ] && continue
        echo "$NET.$i   linux$i.example.com     linux$i" >> $HOSTS
done