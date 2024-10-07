#!/bin/bash

#Function definitions
YES() {
    echo "YES"


}
NO() {
    echo "NO"


}
FAIL() {
    echo "[ FAIL ]"
    exit 2

}

# Variable definitions


echo -n "Enter Your Choice? (y/n):"
read CHOICE

case $CHOICE in 
    y|Y|yes|YES|yes) YES  ;;
    n|N|no|NO|No)    NO   ;;
    *)               FAIL ;;  
esac 