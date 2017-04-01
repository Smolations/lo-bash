#!/bin/bash

h1 'truncate'


str="hi-diddly-ho there, neighborino"


truncated_str1="hi-diddly-ho there, neighbo..."
result1=`_.truncate "$str"`
[ "$truncated_str1" = "$result1" ] && pass || fail "\"$truncated_str1\" = \"$result1\""

truncated_str2="hi-diddly-ho there,..."
result2=`_.truncate --length=24 --separator=' ' "$str"`
[ "$truncated_str2" = "$result2" ] && pass || fail "\"$truncated_str2\" = \"$result2\""

truncated_str3="hi-diddly-ho there, neig [...]"
result3=`_.truncate --omission=' [...]' "$str"`
[ "$truncated_str3" = "$result3" ] && pass || fail "\"$truncated_str3\" = \"$result3\""



# && pass || fail
