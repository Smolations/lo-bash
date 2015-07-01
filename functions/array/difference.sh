
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
  # local turn=0 one="$1" two="$2"
  local turn=1 cnt=0 _array1= _array2= #foo= bar=
  local one=`_._arrayFromVar $1` two=`_._arrayFromVar $2`

  # echo
  # foo="1[*]"
  # bar="2[*]"
  # eval "$1=${!1} $2=${!2}"

  # echo "${1[@]} | ${2[@]}"
  # echo ${arr1[@]}    # works!


  # if _.isArray $1 && _.isArray $1
  if [ -n "$one" -a -n "$two" ]; then
    eval "_array1=(${one}) _array2=(${two})"

    # for i in ${_array1[@]}; do
    for (( i = 0; i < ${#_array1[@]}; i++ )); do
      # echo "i == [${i}]"
      if ! egrep -q "\\]=\"${_array1[i]}\"" <<< "$two"; then
        result+="${_array1[i]}"
      fi
    done

    echo "$result"
    # echo "${result[@]}"
    # echo "-> [${result[@]}]"
    # echo
  fi

  return $turn
}
