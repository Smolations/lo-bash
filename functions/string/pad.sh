
# _.pad([string=''], [length=0], [chars=' '])

# Pads string on the left and right sides if it’s shorter than length. Padding characters are truncated if they can’t be evenly divided by length.

# Arguments
# [string=''] (string): The string to pad.
# [length=0] (number): The padding length.
# [chars=' '] (string): The string used as padding.
# Returns
# (string): Returns the padded string.

# Example
# _.pad('abc', 8);
# // → '  abc   '

# _.pad('abc', 8, '_-');
# // → '_-abc_-_'

# _.pad('abc', 3);
# // → 'abc'

function _.pad {
  local turn=0

  return $turn
}
