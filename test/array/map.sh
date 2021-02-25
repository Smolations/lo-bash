#!/bin/bash

h1 'lo::map'


arr=( 'this' 'is' 'insane')

function iteratee {
  declare -i ndx=$2
  local val="$1"

  if (( ndx > 1 )); then
    lo::toUpper "$val"
  else
    echo "$val"
  fi
}


lo::map arr iteratee newArray

[[ "${newArray[@]}" == "this is INSANE" ]] && pass || fail "'${newArray[@]}' == 'this is INSANE'"
