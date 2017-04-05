
# _.gte(value, other)

# Checks if value is greater than or equal to other.

# Arguments
# value (*): The value to compare.
# other (*): The other value to compare.
# Returns
# (boolean): Returns true if value is greater than or equal to other, else false.

function _.gte {
  local turn=1

  if _.isNumber $1 && _.isNumber $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    _._awkCompare "$1 >= $2" && turn=0
  else
    [[ "$1" > "$2" ]] || [ "$1" == "$2" ] && turn=0
  fi

  return $turn
}

