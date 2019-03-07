#!/bin/bash

h1 '_join'


arr=( 'a' 'b' 'c' )

str=`_join arr`
[[ "$str" == "a b c" ]] && pass || fail "'$str' = 'a b c'"

str=`_join arr '~'`
[[ "$str" == "a~b~c" ]] && pass || fail "'$str' = 'a~b~c'"
