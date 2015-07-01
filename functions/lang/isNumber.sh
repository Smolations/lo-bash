
# _.isNumber(value)

# Checks if value is classified as a Number primitive or object.

# Note: To exclude Infinity, -Infinity, and NaN, which are classified as numbers,
# use the _.isFinite method.

# Arguments
# value (*): The value to check.
# Returns
# (boolean): Returns true if value is correctly classified, else false.

function _.isNumber {
  local turn=0

  case ${1#[-+]} in
    ''|*[!0-9.]*| *.*.*) turn=1 ;;
  esac

  return $turn
}

