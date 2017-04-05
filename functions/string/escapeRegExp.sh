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
# _.escapeRegExp([string=''])

# Escapes the RegExp special characters "\", "/", "^", "$", ".", "|", "?", "*", "+", "(", ")", "[", "]", "{" and "}" in string.

# Arguments
# [string=''] (string): The string to escape.
# Returns
# (string): Returns the escaped string.

# Example
# _.escapeRegExp('[lodash](https://lodash.com/)');
# // → '\[lodash\]\(https:\/\/lodash\.com\/\)'

function _.escapeRegExp {
  local turn=0

  return $turn
}
