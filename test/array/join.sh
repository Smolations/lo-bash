#!/bin/bash

h1 '_::join'


arr=( 'a' 'b' 'c' )

str=`_::join arr`
[[ "$str" == "a b c" ]] && pass || fail "'$str' = 'a b c'"

str=`_::join arr '~'`
[[ "$str" == "a~b~c" ]] && pass || fail "'$str' = 'a~b~c'"
