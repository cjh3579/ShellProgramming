#! /bin/bash

###############################
# 1. $HOME/.bashrc
# 2. $HOME/.vimrc
# 3.
###############################

set -e

source /root/shell/functions.sh

echo "[ $HOME/.bashrc ]"
###############################
# 1. $HOME/.bashrc
###############################
BASHRC=$HOME/bashrc.txt  # 일단 다바뀌면 좀 그러니 파일을 만들어 확인 가능
# BASHRC=$HOME/.bashrc   # 바꿀꺼면 주석 해제
echo "[ Phase 01 ] $BASHRC 파일 설정"
/bin/cp /etc/skel/.bashrc $BASHRC
cat << EOF >> $BASHRC
#
#   Specific configuration
#

export PS1='\[\e[31;1m\][\u@\h\[\e[33;1m\] \w]\$ \[\e[m\]'
alias ls='ls -h -F --color=auto'
alias pps='ps -ef | head -1 ; ps -ef | grep $1 | egrep -vw "ps|grep"' 
alias nstate='netstat -antup | head -2 ; netstat -antup | grep $1'
alias vi='/usr/bin/vim'
alias grep='grep --color=auto -i'
alias df='df -h -T'



EOF
echo "[  OK  ] $* $BASHRC 설정 완료."


echo "[ $HOME/.vimrc ]"
# 2. $HOME/.vimrc
VIMRC=$HOME/.vimrc
echo "[ Phase 02 ] $VIMRC 파일 설정"
cat << EOF > $VIMRC
set ts=4
set nu
set et
set ai
syntax on

EOF
echo "[  OK  ] $* $VIMRC 설정 완료."