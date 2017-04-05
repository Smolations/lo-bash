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
# _.trimLeft([string=''], [chars=whitespace])

# Removes leading whitespace or specified characters from string.

# Arguments
# [string=''] (string): The string to trim.
# [chars=whitespace] (string): The characters to trim.
# Returns
# (string): Returns the trimmed string.

# Example
# _.trimLeft('  abc  ');
# // → 'abc  '

# _.trimLeft('-_-abc-_-', '_-');
# // → 'abc-_-'

function _.trimLeft {
  local str="$1" chars=$2
  [ -z "$chars" ] && chars=' '
  sed -E "s/^[${chars}]+//" <<< "$str"
  return 0
}
