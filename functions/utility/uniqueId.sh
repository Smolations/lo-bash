
# _.uniqueId([prefix])

# Generates a unique ID. If prefix is provided the ID is appended to it.

# Arguments
# [prefix] (string): The value to prefix the ID with.
# Returns
# (string): Returns the unique ID.

# Example
# _.uniqueId('contact_');
# // → 'contact_104'

# _.uniqueId();
# // → '105'

function _.uniqueId {
  local turn=0

  return $turn
}
