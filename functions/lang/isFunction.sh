
# _.isFunction(value)

# Checks if value is classified as a Function object.

# Arguments
# value (*): The value to check.
# Returns
# (boolean): Returns true if value is correctly classified, else false.

function _.isFunction {
  local tipe=`type -t $1 2>/dev/null`
  [ "$tipe" == 'function' ]
}
