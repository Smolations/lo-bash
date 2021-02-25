#!/bin/bash

h1 'lo::times'


function iteratee {
  local ndx="$1"
  echo -n $ndx
}

result=`lo::times 4 iteratee`
[[ "$result" == "0123" ]] && pass || fail "'$result' == '0123'"

lo::times 4 iteratee resultArray
(( ${#resultArray[@]} == 4 )) && pass || fail "'${#resultArray[@]}' == '4'"
(( ${resultArray[2]} == 2 )) && pass || fail "'${resultArray[2]}' == '2'"

# && pass || fail
