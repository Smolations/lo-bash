## /* @function
 #  @usage _.remove <arrayName> <funcName>
 #
 #  @output false
 #
 #  @description
 #  Removes all elements from array that predicate returns truthy for and
 #  returns an array of the removed elements. The predicate is invoked with
 #  two arguments: (value, index).
 #  description@
 #
 #  @notes
 #  - This method mutates <arrayName>. Use _.pull to pull elements from an
 #  array by value.
 #  notes@
 #
 #  @examples
 #  # script.sh
 #
 #  arr=( 'hiya' 'hello' 'foobar' 'deuces' 'sup' )
 #
 #  function predicate {
 #    local element="$1" turn=1
 #    [[ ${#element} > 4 ]] && turn=0
 #    return $turn
 #  }
 #
 #  _.remove arr predicate
 #  # arr is now ( 'hiya' 'sup' )
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  functions/_/_arrayCopy.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - given <arrayName> is invalid
 #  2 - unable to mutate <arrayName>
 #  returns@
 #
 #  @file functions/array/remove.sh
 ## */

function _.remove {
  declare -i turn=0
  local arrayName="$1" funcName="$2" _newArray=( )

  _._arrayCopy _tmpArray $arrayName || turn=1

  if (( turn == 0 )); then
    for (( i = 0; i < ${#_tmpArray[@]}; i++ )); do
      eval "$funcName '${_tmpArray[i]}' $i" || _newArray+=( "${_tmpArray[i]}" )
    done

    _._arrayCopy $arrayName _newArray || turn=2
  fi

  unset _tmpArray _newArray

  return $turn
}
