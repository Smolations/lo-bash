#!/bin/bash

h1 '_padEnd'


str="abc"

len1=6
padded_str1="abc   "
result1=`_padEnd "$str" $len1`
[[ "$padded_str1" == "$result1" ]] && pass || fail "\"$padded_str1\" == \"$result1\""

len2=6
padded_str2="abc_-_"
result2=`_padEnd "$str" $len2 "_-"`
[[ "$padded_str2" == "$result2" ]] && pass || fail "\"$padded_str2\" == \"$result2\""

len3=3
padded_str3="abc"
result3=`_padEnd "$str" $len3`
[[ "$padded_str3" == "$result3" ]] && pass || fail "\"$padded_str3\" == \"$result3\""

# && pass || fail
