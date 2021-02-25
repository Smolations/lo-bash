#!/bin/bash

h1 '_::times'


function iteratee() {
  local ndx="$1"
  echo -n $ndx
}

result=`_::times 4 iteratee`
[[ "$result" == "0123" ]] && pass || fail "'$result' == '0123'"

_::times 4 iteratee resultArray
(( ${#resultArray[@]} == 4 )) && pass || fail "'${#resultArray[@]}' == '4'"
(( ${resultArray[2]} == 2 )) && pass || fail "'${resultArray[2]}' == '2'"

# && pass || fail
