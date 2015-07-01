
# _.escape([string=''])

# Converts the characters "&", "<", ">", '"', "'", and "`", in string to their corresponding HTML entities.

# Note: No other characters are escaped. To escape additional characters use a third-party library like he.

# Though the ">" character is escaped for symmetry, characters like ">" and "/" don’t need escaping in HTML and have no special meaning unless they're part of a tag or unquoted attribute value. See Mathias Bynens’s article (under "semi-related fun fact") for more details.

# Backticks are escaped because in Internet Explorer < 9, they can break out of attribute values or HTML comments. See #59, #102, #108, and #133 of the HTML5 Security Cheatsheet for more details.

# When working with HTML you should always quote attribute values to reduce XSS vectors.

# Arguments
# [string=''] (string): The string to escape.
# Returns
# (string): Returns the escaped string.

# Example
# _.escape('fred, barney, & pebbles');
# // → 'fred, barney, &amp; pebbles'

function _.escape {
  local turn=0

  return $turn
}
