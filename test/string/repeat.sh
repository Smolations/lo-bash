#!/bin/bash

h1 'lo::repeat'


str1="*"
mult1=3
repeated_str1="***"
result1=`lo::repeat "$str1" $mult1`

str2="abc"
mult2=2
repeated_str2="abcabc"
result2=`lo::repeat "$str2" $mult2`

str3="abc"
mult3=0
repeated_str3=""
result3=`lo::repeat "$str3" $mult3`


#  lo::repeat "*" 3
#  lo::repeat "abc" 2
#  lo::repeat "abc" 0



[[ "$result1" == "$repeated_str1" ]] && pass || fail "$result1 == $repeated_str1"
[[ "$result2" == "$repeated_str2" ]] && pass || fail "$result2 == $repeated_str2"
[[ "$result3" == "$repeated_str3" ]] && pass || fail "$result3 == $repeated_str3"
# && pass || fail
