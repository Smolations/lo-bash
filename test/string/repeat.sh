#!/bin/bash

h1 '_repeat'


str1="*"
mult1=3
repeated_str1="***"
result1=`_repeat "$str1" $mult1`

str2="abc"
mult2=2
repeated_str2="abcabc"
result2=`_repeat "$str2" $mult2`

str3="abc"
mult3=0
repeated_str3=""
result3=`_repeat "$str3" $mult3`


#  _repeat "*" 3
#  _repeat "abc" 2
#  _repeat "abc" 0



[[ "$result1" == "$repeated_str1" ]] && pass || fail "$result1 == $repeated_str1"
[[ "$result2" == "$repeated_str2" ]] && pass || fail "$result2 == $repeated_str2"
[[ "$result3" == "$repeated_str3" ]] && pass || fail "$result3 == $repeated_str3"
# && pass || fail
