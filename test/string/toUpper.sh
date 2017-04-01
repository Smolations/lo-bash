#!/bin/bash

h1 'toUpper'


str1="--Foo-Bar--"
uc_str1="--FOO-BAR--"
result1=`_.toUpper "$str1"`
[ "$result1" = "$uc_str1" ] && pass || fail "\"$result1\" = \"$uc_str1\""


str2="fooBar"
uc_str2="FOOBAR"
result2=`_.toUpper "$str2"`
[ "$result2" = "$uc_str2" ] && pass || fail "\"$result2\" = \"$uc_str2\""


str3="__foo_bar__"
uc_str3="__FOO_BAR__"
result3=`_.toUpper "$str3"`
[ "$result3" = "$uc_str3" ] && pass || fail "\"$result3\" = \"$uc_str3\""

# && pass || fail
