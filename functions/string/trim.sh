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
# _.trim([string=''], [chars=whitespace])

# Removes leading and trailing whitespace or specified characters from string.

# Arguments
# [string=''] (string): The string to trim.
# [chars=whitespace] (string): The characters to trim.
# Returns
# (string): Returns the trimmed string.

# Example
# _.trim('  abc  ');
# // → 'abc'

# _.trim('-_-abc-_-', '_-');
# // → 'abc'

# _.map(['  foo  ', '  bar  '], _.trim);
# // → ['foo', 'bar']

function _.trim {
  local str="$1" chars=${2- }
  sed -E "s/^[${chars}]+|[${chars}]+$//g" <<< "$str"
  return
}
