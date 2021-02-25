#!/bin/bash

h1 'lo::last'


arr1=( 2 'hello' 'foobar' true 'hello' )
t1="`lo::last arr1`"
[[ "$t1" == "hello" ]] && pass || fail "'$t1' = 'hello'"

arr2=( )
`lo::last arr2` && fail || pass

# && pass || fail
