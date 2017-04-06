#!/bin/bash

h1 'reverse'


arr=( 2 'hello' 'foobar' true )

_.reverse arr

[ "${#arr[@]}" = "4" ] && pass || fail "'${#arr[@]}' = '4'"
[ "${arr[0]}" = "true" ] && pass || fail "'${arr[0]}' = 'true'"
[ "${arr[1]}" = "foobar" ] && pass || fail "'${arr[1]}' = 'foobar'"
[ "${arr[2]}" = "hello" ] && pass || fail "'${arr[2]}' = 'hello'"
[ "${arr[3]}" = "2" ] && pass || fail "'${arr[3]}' = '2'"
