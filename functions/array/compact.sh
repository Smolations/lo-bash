## /* @function
 #  @usage _.compact <arrayName> <newArrayName>
 #
 #  @output false
 #
 #  @exports
 #  $<newArrayName>
 #  exports@
 #
 #  @description
 #  Creates an array with all falsey values removed. The values false, null, 0, "", undefined, and NaN are falsey.
 #  description@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  _.compact
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
 #  @file functions/array/compact.sh
 ## */
# _.compact(array)

#

# Arguments
# array (Array): The array to compact.
# Returns
# (Array): Returns the new array of filtered values.

# Example
# _.compact([0, 1, false, 2, '', 3]);
# // → [1, 2, 3]

function _.compact {
  local turn=0

  return $turn
}
