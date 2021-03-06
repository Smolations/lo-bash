#!/bin/bash

h1 '_inArgs'


args=("--foo=bar" "-ab" "--jolly='roger comes'" "--dsnuts" '--for="real though"')

_inArgs foo "${args[@]}" && pass || fail
[[ "bar" == "$_arg_val" ]] && pass || fail "\"bar\" == \"$_arg_val\""
[[ 0 == $_arg_index ]] && pass || fail "0 == ${_arg_index}"


_inArgs a "${args[@]}" && pass || fail
[[ "" == "$_arg_val" ]] && pass || fail "\"\" == \"$_arg_val\""
[[ 1 == $_arg_index ]] && pass || fail "1 == ${_arg_index}"


_inArgs b "${args[@]}" && pass || fail
[[ "" == "$_arg_val" ]] && pass || fail "\"\" == \"$_arg_val\""
[[ 1 == $_arg_index ]] && pass || fail "1 == ${_arg_index}"


_inArgs jolly "${args[@]}" && pass || fail
[[ "roger comes" == "$_arg_val" ]] && pass || fail "\"roger comes\" == \"$_arg_val\""
[[ 2 == $_arg_index ]] && pass || fail "2 == ${_arg_index}"


_inArgs dsnuts "${args[@]}" && pass || fail
[[ "" == "$_arg_val" ]] && pass || fail "\"\" == \"$_arg_val\""
[[ 3 == $_arg_index ]] && pass || fail "3 == ${_arg_index}"


_inArgs "for" "${args[@]}" && pass || fail
[[ "real though" == "$_arg_val" ]] && pass || fail "\"real though\" == \"$_arg_val\""
[[ 4 == $_arg_index ]] && pass || fail "4 == ${_arg_index}"
