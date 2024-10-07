#!/bin/bash

Menu() {
cat << EOF


(관리 목록)
---------------------------------
1) 사용자 추가
2) 사용자 확인
3) 사용자 삭제
4) 종료
---------------------------------
EOF
}


while true
do
    Menu
    echo -n "선택 번호? (1|2|3|4) : "
    read NUM

    case $NUM in
        1)  : ;;
        2)  : ;;
        3)  : ;;
        4)  : ;;
        *)  echo "[ WARN ] 잘못된 번호를 입력 했습니다" ;;
    esac
done