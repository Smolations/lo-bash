#!/bin/bash

h1 'replace'


str="i am an ultimate-unicorn. bow before ME!"

result1=`_.replace "$str" "u" "a"`
expected1="i am an altimate-anicorn. bow before ME!"
[[ "$result1" == "$expected1" ]] && pass || fail "'$result1' == '$expected1'"

result2=`_.replace "$str" "a[^ ]+" "x"`
expected2="i x x ultimx bow before ME!"
[[ "$result2" == "$expected2" ]] && pass || fail "'$result2' == '$expected2'"

result3=`_.replace "$str" "-" " "`
expected3="i am an ultimate unicorn. bow before ME!"
[[ "$result3" == "$expected3" ]] && pass || fail "'$result3' == '$expected3'"

result4=`_.replace "$str" "ME!" "me."`
expected4="i am an ultimate-unicorn. bow before me."
[[ "$result4" == "$expected4" ]] && pass || fail "'$result4' == '$expected4'"

result5=`_.replace "some/file/path" "\/" "|"`
expected5="some|file|path"
[[ "$result5" == "$expected5" ]] && pass || fail "'$result5' == '$expected5'"


# && pass || fail
