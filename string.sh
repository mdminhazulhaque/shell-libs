#/bin/bash

str_sub() { [ "$3" == "" ] && echo ${1:$2} || echo ${1:$2:$3}; }
str_len() { echo ${#1}; }
str_pos() { s="${1%%$2*}"; [ "$s" = "$1" ] && echo -1 || echo ${#s}; }
str_rev() { echo $1 | rev; }
str_replace() { echo ${1//$2/$3}; }
str_count() { echo `grep -o "$2" <<< "$1" | wc -l`; }
str_to_upper() { echo "${1^^}"; }
str_to_lower() { echo "${1,,}"; }
str_tok() { for word in "${1//$2/ }"; do echo $word; done; }

# test
# str_sub "Hello World" 2 5
# str_len "Hello"
# str_pos "Good Morning" "Mo"
# str_replace "I love Apple" "Apple" "Banana"
# str_rev "Apple"
# str_count "int a; int b; int c;" "int"
# str_to_upper "apple"
# str_to_lower "BANANA"
# for tok in `str_tok "good_bye_cruel_world" "_"`; do
# echo $tok; done
