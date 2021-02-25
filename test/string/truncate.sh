#!/bin/bash

h1 '_::string::truncate'


str="hi-diddly-ho there, neighborino"


truncated_str1="hi-diddly-ho there, neighbo..."
result1=`_::string::truncate "$str"`
[[ "$truncated_str1" == "$result1" ]] && pass || fail "\"$truncated_str1\" == \"$result1\""

truncated_str2="hi-diddly-ho there,..."
result2=`_::string::truncate --length=24 --separator=' ' "$str"`
[[ "$truncated_str2" == "$result2" ]] && pass || fail "\"$truncated_str2\" == \"$result2\""

truncated_str3="hi-diddly-ho there, neig [...]"
result3=`_::string::truncate --omission=' [...]' "$str"`
[[ "$truncated_str3" == "$result3" ]] && pass || fail "\"$truncated_str3\" == \"$result3\""



# && pass || fail
