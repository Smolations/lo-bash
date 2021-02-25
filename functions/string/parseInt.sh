## /* @function
 #  @usage lo::parseInt <string>
 #
 #  @output true
 #
 #  @description
 #  Converts string to an integer.
 #  description@
 #
 #  @notes
 #  - Only supports base 10 at the moment.
 #  notes@
 #
 #  @examples
 #  $ lo::parseInt
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  lo::trim
 #  lo::trimLeft
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/string/parseInt.sh
 ## */

function lo::parseInt {
  declare -i turn=0
  local str=`lo::trim "$@"`

  # come back to different bases?
  str=`egrep --only-matching '^[0-9]+' <<< "$str" 2>/dev/null`
  [[ -n "$str" ]] && egrep -q '^0+$' <<< "$str" || str=`lo::trimLeft "$str" '0'`

  echo -n $str
  return $turn
}
