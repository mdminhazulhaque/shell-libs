#!/bin/bash

term_progressbar() { max=; [ "$2" == "" ] && max=100 || max=$2;v=`echo $1*100/$max | bc`;printf "\r%3d%% " $v;while [ $v -gt 0 ];do printf "#";v=$((v-2));done; }
term_progressbar_100() { max=; [ "$2" == "" ] && max=100 || max=$2;v=`echo $1*100/$max | bc`;printf "\r%3d%% " $v;while [ $v -gt 0 ];do printf "#";v=$((v-1));done; }

# internal purpose
__term_table_line(){ z=$1;while [ $z -gt 0 ];do printf '+';p=$2;while [ $p -gt -2 ];do printf '-';p=$((p-1));done;z=$((z-1));done;printf '+\n';}
term_table() { r=$1;c=$2;l=$3;shift;shift;shift;d=("$@");x=0;while [ $x -lt $r ];do [ $x -eq 0 ] && __term_table_line $c $l;y=0;while [ $y -lt $c ];do i=$((x*c+y));printf "| %-${l}s " ${d[i]};[ $y -eq $((c-1)) ] && printf "|\n";y=$((y+1));done;[ $x -eq 0 -o $x -eq $((r-1)) ] && __term_table_line $c $l;x=$((x+1));done; }

term_line() { [ "$2" == "" ] && p='_' || p=$2;v=$1;while [ $v -gt 0 ];do printf "$p" $v;v=$((v-1));done;printf "\n"; }

term_print_success() { echo -e "\e[32m${@}\e[0m"; }
term_print_success_b() { echo -e "\e[42m${@}\e[0m"; }

term_print_alert() { echo -e "\e[33m${@}\e[0m"; }
term_print_alert_b() { echo -e "\e[43m${@}\e[0m"; }

term_print_error() { echo -e "\e[31m${@}\e[0m"; }
term_print_error_b() { echo -e "\e[41m${@}\e[0m"; }

# for i in {1..25}
# do
#     term_progressbar $i 25
#     sleep 0.25
# done

# term_line 80 '*'
# term_line 24 '#'
# 
# data=(version name 5.0 lolipop 4.4 kitkat 3.0 honeycomb 2.3 gingerbread)
# term_table 5 2 15 ${data[@]}
# 
# term_print_success "Download completed"
# term_print_alert "Download cancelled"
# term_print_error "Download failed"
# 
# term_print_success_b "Download completed"
# term_print_alert_b "Download cancelled"
# term_print_error_b "Download failed"

