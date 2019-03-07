#!/bin/bash

h1 '_last'


arr1=( 2 'hello' 'foobar' true 'hello' )
t1="`_last arr1`"
[[ "$t1" == "hello" ]] && pass || fail "'$t1' = 'hello'"

arr2=( )
`_last arr2` && fail || pass

# && pass || fail
