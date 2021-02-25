#!/bin/bash

h1 '_::array::last'


arr1=( 2 'hello' 'foobar' true 'hello' )
t1="`_::array::last arr1`"
[[ "$t1" == "hello" ]] && pass || fail "'$t1' = 'hello'"

arr2=( )
`_::array::last arr2` && fail || pass

# && pass || fail
