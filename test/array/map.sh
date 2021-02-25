#!/bin/bash

h1 '_::map'


arr=( 'this' 'is' 'insane')

function iteratee() {
  declare -i ndx=$2
  local val="$1"

  if (( ndx > 1 )); then
    _::to_upper "$val"
  else
    echo "$val"
  fi
}


_::map arr iteratee newArray

[[ "${newArray[@]}" == "this is INSANE" ]] && pass || fail "'${newArray[@]}' == 'this is INSANE'"
