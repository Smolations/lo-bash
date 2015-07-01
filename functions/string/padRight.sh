
# _.padRight([string=''], [length=0], [chars=' '])

# Pads string on the right side if it’s shorter than length. Padding characters are truncated if they exceed length.

# Arguments
# [string=''] (string): The string to pad.
# [length=0] (number): The padding length.
# [chars=' '] (string): The string used as padding.
# Returns
# (string): Returns the padded string.

# Example
# _.padRight('abc', 6);
# // → 'abc   '

# _.padRight('abc', 6, '_-');
# // → 'abc_-_'

# _.padRight('abc', 3);
# // → 'abc'

function _.padRight {
  local turn=0

  return $turn
}
