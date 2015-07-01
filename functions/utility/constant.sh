
# _.constant(value)

# Creates a function that returns value.

# Arguments
# value (*): The value to return from the new function.
# Returns
# (Function): Returns the new function.

# Example
# var object = { 'user': 'fred' };
# var getter = _.constant(object);

# getter() === object;
# // → true

function _.constant {
  local turn=0

  return $turn
}
