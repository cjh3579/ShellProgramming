#!/bin/bash

if [ $# -ne 2 ]; then
   echo "Usage : $0 <pattern> <filename>"
   exit 1
fi
PATTERN="$1"
FILENAME="$2"

if grep "$PATTERN" "$FILENAME" >/dev/null 2>&1 ; then
     echo "[ OK ]"
else
     echo "[ FAIL ]"
fi