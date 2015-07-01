
# _.padLeft([string=''], [length=0], [chars=' '])

# Pads string on the left side if it’s shorter than length. Padding characters are truncated if they exceed length.

# Arguments
# [string=''] (string): The string to pad.
# [length=0] (number): The padding length.
# [chars=' '] (string): The string used as padding.
# Returns
# (string): Returns the padded string.

# Example
# _.padLeft('abc', 6);
# // → '   abc'

# _.padLeft('abc', 6, '_-');
# // → '_-_abc'

# _.padLeft('abc', 3);
# // → 'abc'

function _.padLeft {
  local turn=0

  return $turn
}
