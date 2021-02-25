#!/bin/bash

h1 'lo::forEach'


arr=( 'alpha' 'bravo' 'charlie' )
arrList=()

function iteratee {
  declare -i ndx=$2
  local val="$1"

  arrList+=( "${ndx}. ${val}" )
}


lo::forEach arr iteratee

for (( i = 0; i < ${#arr[@]}; i++ )); do
  [[ "${arrList[i]}" == "${i}. ${arr[i]}" ]] && pass || fail "'${arrList[i]}' == '${i}. ${arr[i]}'"
done
