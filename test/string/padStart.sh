#!/bin/bash

h1 '_padStart'


str="abc"

len1=6
padded_str1="   abc"
result1=`_padStart "$str" $len1`
[[ "$padded_str1" == "$result1" ]] && pass || fail "\"$padded_str1\" == \"$result1\""

len2=6
padded_str2="_-_abc"
result2=`_padStart "$str" $len2 "_-"`
[[ "$padded_str2" == "$result2" ]] && pass || fail "\"$padded_str2\" == \"$result2\""

len3=3
padded_str3="abc"
result3=`_padStart "$str" $len3`
[[ "$padded_str3" == "$result3" ]] && pass || fail "\"$padded_str3\" == \"$result3\""


# && pass || fail
