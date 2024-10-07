#!/bin/bash

echo -n "Enter Your Filename : "
read FILENAME

echo $FILENAME 
if [ -x "$FILENAME" ]; then
    $FILENAME
else
    echo "[ FAIL ] $FILENAME: 파일에 실행 권한이 없습니다."
    exit 1
fi