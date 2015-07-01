
# _.isArray(value)

# Checks if value is classified as an Array object.

# Arguments
# value (*): The value to check.
# Returns
# (boolean): Returns true if value is correctly classified, else false.

# do NOT use $ when passing var names!
# _.isArray varName
function _.isArray {
  declare -p $1 2> /dev/null | grep -q '^declare \-a'
}
