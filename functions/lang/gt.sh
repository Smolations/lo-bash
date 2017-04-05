
# _.gt(value, other)

# Checks if value is greater than other.

# Arguments
# value (*): The value to compare.
# other (*): The other value to compare.
# Returns
# (boolean): Returns true if value is greater than other, else false.

function _.gt {
  local turn=1

  if _.isNumber $1 && _.isNumber $2; then
    # if used enough, maybe a helper function to check output for true/false
    # would be useful
    (( $1 > $2 )) && turn=0
  else
    [[ "$1" > "$2" ]] && turn=0
  fi

  return $turn
}
