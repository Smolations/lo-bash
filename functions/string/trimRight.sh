
# _.trimRight([string=''], [chars=whitespace])

# Removes trailing whitespace or specified characters from string.

# Arguments
# [string=''] (string): The string to trim.
# [chars=whitespace] (string): The characters to trim.
# Returns
# (string): Returns the trimmed string.

# Example
# _.trimRight('  abc  ');
# // → '  abc'

# _.trimRight('-_-abc-_-', '_-');
# // → '-_-abc'

function _.trimRight {
  local str="$1" chars=$2
  [ -z "$chars" ] && chars=' '
  sed -E "s/[${chars}]+$//" <<< "$str"
  return 0
}
