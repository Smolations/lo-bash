#!/bin/bash

h1 'length'


str1="hey there"
len1=9
result1=`_.length "$str1"`
[[ $len1 == $result1 ]] && pass || fail "$len1 == $result1"


str2="i'm a bit longer"
len2=16
result2=`_.length "$str2"`
[[ $len2 == $result2 ]] && pass || fail "$len2 == $result2"


# && pass || fail
