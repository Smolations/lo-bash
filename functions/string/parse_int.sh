## /* @function
 #  @usage _::string::parse_int <string>
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
 #  $ _::parse_int
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  _::trim
 #  _::trim_left
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/string/parseInt.sh
 ## */

function _::string::parse_int() {
  declare -i turn=0
  local str=`_::string::trim "$@"`

  # come back to different bases?
  str=`egrep --only-matching '^[0-9]+' <<< "$str" 2>/dev/null`
  [[ -n "$str" ]] && egrep -q '^0+$' <<< "$str" || str=`_::string::trim_left "$str" '0'`

  echo -n $str
  return $turn
}
