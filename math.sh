#!/bin/bash

# config
SCALE='3'
PI='3.1415926532'

math_add() { echo "scale=$SCALE;$1+$2" | bc; }
math_sub() { echo "scale=$SCALE;$1-$2" | bc; }
math_mul() { echo "scale=$SCALE;$1*$2" | bc; }
math_div() { echo "scale=$SCALE;$1/$2" | bc; }
math_inc() { echo $1+1 | bc; }
math_dec() { echo $1-1 | bc; }
math_mod() { echo $1%$2 | bc; }
math_pow() { echo $1^$2 | bc; }
math_sqrt() { echo "scale=$SCALE;sqrt($1)" | bc; }
math_ln() { echo "scale=$SCALE;l($1)" | bc -l; }
math_sin() { echo "scale=$SCALE;s($1)" | bc -l; }
math_cos() { echo "scale=$SCALE;c($1)" | bc -l; }
math_arc() { echo "scale=$SCALE;a($1)" | bc -l; }
math_rad_to_deg() { echo "scale=$SCALE;$1*180/$PI" | bc; }
math_deg_to_rad() { echo "scale=$SCALE;$1*$PI/180" | bc; }
math_dec_to_bin() { echo "obase=2;$1" | bc; }
math_dec_to_oct() { echo "obase=8;$1" | bc; }
math_dec_to_hex() { echo "obase=16;$1" | bc; }
math_bin_to_dec() { echo "ibase=2;$1" | bc; }
math_oct_to_dec() { echo "ibase=8;$1" | bc; }
math_hex_to_dec() { echo "ibase=16;$1" | bc; }
math_rand() { echo $RANDOM % $2 + $1 | bc; }

# math_bin_to_dec 11011
# math_oct_to_dec 8165
# math_hex_to_dec FF
# math_rand 1 100