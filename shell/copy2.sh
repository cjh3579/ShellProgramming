#! /bin/bash


if [ $# -ne 2 ]; then 
    echo "Usage: $0 source destination"
    exit 1
fi
SRC="$1"
DST="$2"

SERVERLIST=/root/shell/server.list

cat << EOF > $SERVERLIST
172.16.6.250
172.16.6.202
172.16.6.203
EOF

for i in $(cat $SERVERLIST)
do  
    echo "------ $i -----"
    scp "$SRC" "$i:$DST"
    echo 
done