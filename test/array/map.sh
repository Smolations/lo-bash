#!/bin/bash

h1 '_map'


arr=( 'this' 'is' 'insane')

function iteratee {
  declare -i ndx=$2
  local val="$1"

  if (( ndx > 1 )); then
    _toUpper "$val"
  else
    echo "$val"
  fi
}


_map arr iteratee newArray

[[ "${newArray[@]}" == "this is INSANE" ]] && pass || fail "'${newArray[@]}' == 'this is INSANE'"
