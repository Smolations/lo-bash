#!/bin/bash

h1 '_::array::pull'


arr=( 2 'hello' 'foobar' true )

_::array::pull arr 'hello' true

[[ "${#arr[@]}" == "2" ]] && pass || fail "'${#arr[@]}' = '2'"
[[ "${arr[0]}" == "2" ]] && pass || fail "'${arr[0]}' = '2'"
[[ "${arr[1]}" == "foobar" ]] && pass || fail "'${arr[1]}' = 'foobar'"
