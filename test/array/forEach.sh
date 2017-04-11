#!/bin/bash

h1 'forEach'


arr=( 'alpha' 'bravo' 'charlie' )
arrList=()

function iteratee {
  declare -i ndx=$2
  local val="$1"

  arrList+=( "${ndx}. ${val}" )
}


_.forEach arr iteratee

for (( i = 0; i < ${#arr[@]}; i++ )); do
  [[ "${arrList[i]}" == "${i}. ${arr[i]}" ]] && pass || fail "'${arrList[i]}' == '${i}. ${arr[i]}'"
done
