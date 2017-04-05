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
# _.endsWith([string=''], [target], [position=string.length])

# Checks if string ends with the given target string.

# Arguments
# [string=''] (string): The string to search.
# [target] (string): The string to search for.
# [position=string.length] (number): The position to search from.
# Returns
# (boolean): Returns true if string ends with target, else false.

# Example
# _.endsWith('abc', 'c');
# // → true

# _.endsWith('abc', 'b');
# // → false

# _.endsWith('abc', 'b', 2);
# // → true

function _.endsWith {
  local turn=0
  local withoutSuffix="${1%${2}}"

  [ "$1" = "$withoutSuffix" ] && turn=1

  return $turn
}
