#!/bin/bash

h1 '_::string::pad'


str="abc"

len1=8
padded_str1="  abc   "
result1=`_::string::pad "$str" $len1`
[[ "$padded_str1" == "$result1" ]] && pass || fail "\"$padded_str1\" == \"$result1\""


len2=8
padded_str2="_-abc_-_"
result2=`_::string::pad "$str" $len2 "_-"`
[[ "$padded_str2" == "$result2" ]] && pass || fail "\"$padded_str2\" == \"$result2\""


len3=8
padded_str3="12abc123"
result3=`_::string::pad "$str" $len3 "123"`
[[ "$padded_str3" == "$result3" ]] && pass || fail "\"$padded_str3\" == \"$result3\""


padded_str4="abc"
result4=`_::string::pad "$str"`
[[ "$padded_str4" == "$result4" ]] && pass || fail "\"$padded_str4\" == \"$result4\""

# && pass || fail
