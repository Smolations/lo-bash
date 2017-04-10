#!/bin/bash

h1 'remove'


arr=( 'hiya' 'hello' 'foobar' 'deuces' 'sup' )

function predicate {
  declare -i turn=1
  local element="$1"
  (( ${#element} > 4 )) && turn=0
  return $turn
}

_.remove arr predicate

[[ "${#arr[@]}" == "2" ]] && pass || fail "'${#arr[@]}' == '2'"
[[ "${arr[0]}" == "hiya" ]] && pass || fail "'${arr[0]}' == 'hiya'"
[[ "${arr[1]}" == "sup" ]] && pass || fail "'${arr[1]}' == 'sup'"
