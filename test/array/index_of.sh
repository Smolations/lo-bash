#!/bin/bash

h1 '_::array::index_of'


arr=( 2 'hello' 'foobar' true 'hello' )

t1="`_::array::index_of arr 2`"
t2="`_::array::index_of arr "hello"`"
t3="`_::array::index_of arr "hello" 2`"
t4="`_::array::index_of arr true`"

[[ "$t1" == "0" ]] && pass || fail "'$t1' = '0'"
[[ "$t2" == "1" ]] && pass || fail "'$t2' = '1'"
[[ "$t3" == "4" ]] && pass || fail "'$t3' = '4'"
[[ "$t4" == "3" ]] && pass || fail "'$t4' = '3'"

# && pass || fail
