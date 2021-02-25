#!/bin/bash

h1 'lo::toLower'


str1="--Foo-Bar--"
lc_str1="--foo-bar--"
result1=`lo::toLower "$str1"`
[[ "$result1" == "$lc_str1" ]] && pass || fail "\"$result1\" == \"$lc_str1\""


str2="fooBar"
lc_str2="foobar"
result2=`lo::toLower "$str2"`
[[ "$result2" == "$lc_str2" ]] && pass || fail "\"$result2\" == \"$lc_str2\""


str3="__FOO_BAR__"
lc_str3="__foo_bar__"
result3=`lo::toLower "$str3"`
[[ "$result3" == "$lc_str3" ]] && pass || fail "\"$result3\" == \"$lc_str3\""

# && pass || fail
