## /* @function
 #  @usage _.parseInt <string>
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
 #  $ _.parseInt
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  functions/string/trim.sh
 #  functions/string/trimLeft.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/string/parseInt.sh
 ## */

function _.parseInt {
  declare -i turn=0
  local str=`_.trim "$@"`

  # come back to different bases?
  str=`egrep --only-matching '^[0-9]+' <<< "$str" 2>/dev/null`
  [[ -n "$str" ]] && egrep -q '^0+$' <<< "$str" || str=`_.trimLeft "$str" '0'`

  echo -n $str
  return $turn
}
