## /* @function
 #  @usage _.
 #
 #  @output true
 #
 #  @exports
 #  exports@
 #
 #  @description
 #
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  _.
 #  examples@
 #
 #  @dependencies
 #  ``
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 -
 #  returns@
 #
 #  @file functions//.sh
 ## */
# _.parseInt(string, [radix])

# Converts string to an integer of the specified radix. If radix is undefined or 0, a radix of 10 is used unless value is a hexadecimal, in which case a radix of 16 is used.

# Note: This method aligns with the ES5 implementation of parseInt.

# Arguments
# string (string): The string to convert.
# [radix] (number): The radix to interpret value by.
# Returns
# (number): Returns the converted integer.

# Example
# _.parseInt('08');
# // → 8

# _.map(['6', '08', '10'], _.parseInt);
# // → [6, 8, 10]

function _.parseInt {
  local turn=1 str=`_.trim "$@"`

  # come back to different bases (use awk's strtonum() for hex/octal)
  str=`egrep --only-matching '^[0-9]+' <<< "$str" 2>/dev/null`
  [ -n "$str" ] && egrep -q '^0+$' <<< "$str" || str=`_.trimLeft "$str" '0'`

  echo -n $str
  return 0
  # return $turn
  # return [ -n "$str" ]
}
