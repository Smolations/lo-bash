## /* @function
 #  @usage _.forEach  <arrayName> <funcName>
 #
 #  @output false
 #
 #  @description
 #  Iterates over elements of collection and invokes <funcName> for each element.
 #  The <funcName> is invoked with two arguments: (value, index).
 #  Iteratee functions may exit iteration early by explicitly returning a non-zero
 #  exit code.
 #  description@
 #
 #  @notes
 #  notes@
 #
 #  @examples
 #  # script.sh
 #  arr=( 'alpha' 'bravo' 'charlie' )
 #
 #  function iteratee {
 #    declare -i ndx=$2
 #    local val="$1"
 #
 #    echo "${ndx}. ${val}"
 #  }
 #
 #  _.forEach arr iteratee
 #  # 0. alpha
 #  # 1. bravo
 #  # 2. charlie
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  functions/_/_arrayCopy.sh
 #  functions/lang/isFunction.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  2 - invalid <funcName> given
 #  returns@
 #
 #  @file functions/array/forEach.sh
 ## */

function _.forEach {
  declare -i turn=0
  declare -i cnt
  local arrayName="$1" funcName="$2"

  if ! _._arrayCopy _tmpArray $arrayName; then
    turn=1

  elif ! _.isFunction $funcName; then
    turn=2

  else
    cnt=${#_tmpArray[@]}
    for (( i = 0; i < cnt; i++ )); do
      eval "$funcName ${_tmpArray[i]} $i" || break
    done
  fi

  unset _tmpArray

  return $turn
}
