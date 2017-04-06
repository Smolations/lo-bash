#!/bin/bash

h1 'pull'


arr=( 2 'hello' 'foobar' true )

_.pull arr 'hello' true

[ "${#arr[@]}" = "2" ] && pass || fail "'${#arr[@]}' = '2'"
[ "${arr[0]}" = "2" ] && pass || fail "'${arr[0]}' = '2'"
[ "${arr[1]}" = "foobar" ] && pass || fail "'${arr[1]}' = 'foobar'"
