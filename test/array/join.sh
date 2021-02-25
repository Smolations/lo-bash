#!/bin/bash

h1 'lo::join'


arr=( 'a' 'b' 'c' )

str=`lo::join arr`
[[ "$str" == "a b c" ]] && pass || fail "'$str' = 'a b c'"

str=`lo::join arr '~'`
[[ "$str" == "a~b~c" ]] && pass || fail "'$str' = 'a~b~c'"
