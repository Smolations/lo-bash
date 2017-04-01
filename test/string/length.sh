#!/bin/bash

h1 'length'


str1="hey there"
len1=9
result1=`_.length "$str1"`
[ $len1 -eq $result1 ] && pass || fail


str2="i'm a bit longer"
len2=16
result2=`_.length "$str2"`
[ $len2 -eq $result2 ] && pass || fail


# && pass || fail
