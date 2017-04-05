
# _.isEqual(value, other, [customizer], [thisArg])

# Performs a deep comparison between two values to determine if they are equivalent.
# If customizer is provided it is invoked to compare values. If customizer returns
# undefined comparisons are handled by the method instead. The customizer is bound
# to thisArg and invoked with three arguments: (value, other [, index|key]).

# Note: This method supports comparing arrays, booleans, Date objects, numbers,
# Object objects, regexes, and strings. Objects are compared by their own, not
# inherited, enumerable properties. Functions and DOM nodes are not supported. Provide
# a customizer function to extend support for comparing other values.

# Aliases
# _.eq

# Arguments
# value (*): The value to compare.
# other (*): The other value to compare.
# [customizer] (Function): The function to customize value comparisons.
# [thisArg] (*): The this binding of customizer.

function _.isEqual {
  local turn=1

  if _.isNumber $1 && _.isNumber $2; then
    (( a == b )) && turn=0
  else
    [ "$1" == "$2" ] && turn=0
  fi

  return $turn
}

