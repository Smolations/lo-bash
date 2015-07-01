
# _.difference(array, [values])

# Creates an array of unique array values not included in the other provided arrays using SameValueZero for equality comparisons.

# Arguments
# array (Array): The array to inspect.
# [values] (…Array): The arrays of values to exclude.
# Returns
# (Array): Returns the new array of filtered values.

# Example
# _.difference([1, 2, 3], [4, 2]);
# // → [1, 3]

function _.difference {
  local turn=1 new_array=$1 _difference= found=

  _._arrayCopy one $2
  _._arrayCopy two $3

  if _.isArray one && _.isArray two; then
    _difference=() turn=0

    for (( i = 0; i < ${#one[@]}; i++ )); do
      found=

      for (( j = 0; j < ${#two[@]}; j++ )); do
        if [ "${one[i]}" == "${two[j]}" ]; then
          found=true
        fi
        [ $found ] && break
      done

      [ ! $found ] && _difference+=("${one[i]}")
    done

    _._arrayCopy $new_array _difference
  fi

  return $turn
}
