## /* @function
 #  @usage _map <arrayName> <funcName> <newArray>
 #
 #  @output false
 #
 #  @exports
 #  $<newArray>
 #  exports@
 #
 #  @description
 #  Creates an array of values by running each element in collection thru iteratee.
 #  The iteratee is invoked with two arguments: (value, index).
 #  description@
 #
 #  @notes
 #  - The entire array is not passed as the third argument to <funcName> because
 #  it is presumed it is already in scope when the function is called and is
 #  therefore accessible.
 #  notes@
 #
 #  @examples
 #  # script.sh
 #  arr=( 'this' 'is' 'insane')
 #
 #  function iteratee {
 #    declare -i ndx=$2
 #    local val="$1"
 #
 #    if (( ndx > 1 )); then
 #      _toUpper "$val"
 #    else
 #      echo "$val"
 #    fi
 #  }
 #
 #  _map arr iteratee newArray
 #  echo "${newArray[@]}"   # this is INSANE
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  lb_arrayCopy
 #  _isFunction
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  2 - invalid <funcName> given
 #  returns@
 #
 #  @file functions/array/map.sh
 ## */

function _map {
  declare -i turn=0
  local arrayName="${1?Existing array name required as first argument}"
  local funcName="${2?Function name required as second argument}"
  local newArrayName="${3?New array name required as third argument}"
  local _newArray=()

  if ! lb_arrayCopy _tmpArray $arrayName; then
    turn=1

  elif ! _isFunction "$funcName"; then
    turn=2

  else
    for (( i = 0; i < ${#_tmpArray[@]}; i++ )); do
      _newArray+=( `eval "$funcName \"${_tmpArray[i]}\" $i"` )
    done

    lb_arrayCopy $newArrayName _newArray
  fi

  unset _tmpArray

  return $turn
}
