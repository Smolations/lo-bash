## /* @function
 #  @usage _parseInt <string>
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
 #  $ _parseInt
 #  examples@
 #
 #  @dependencies
 #  `egrep -E`
 #  _trim
 #  _trimLeft
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/string/parseInt.sh
 ## */

function _parseInt {
  declare -i turn=0
  local str=`_trim "$@"`

  # come back to different bases?
  str=`egrep -E --only-matching '^[0-9]+' <<< "$str" 2>/dev/null`
  [[ -n "$str" ]] && egrep -E -q '^0+$' <<< "$str" || str=`_trimLeft "$str" '0'`

  echo -n $str
  return $turn
}
