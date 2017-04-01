
# _.startsWith([string=''], [target], [position=0])

# Checks if string starts with the given target string.

# Arguments
# [string=''] (string): The string to search.
# [target] (string): The string to search for.
# [position=0] (number): The position to search from.
# Returns
# (boolean): Returns true if string starts with target, else false.

# Example
# _.startsWith('abc', 'a');
# // → true

# _.startsWith('abc', 'b');
# // → false

# _.startsWith('abc', 'b', 1);
# // → true

function _.startsWith {
  local turn=0
  local withoutPrefix="${1#${2}}"

  [ "$1" = "$withoutPrefix" ] && turn=1

  return $turn
}
