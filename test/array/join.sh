#!/bin/bash

h1 '_::array::join'


arr=( 'a' 'b' 'c' )

str=`_::array::join arr`
[[ "$str" == "a b c" ]] && pass || fail "'$str' = 'a b c'"

str=`_::array::join arr '~'`
[[ "$str" == "a~b~c" ]] && pass || fail "'$str' = 'a~b~c'"
