## /* @function
 #  @usage _.pull <arrayName> [<val1>[ <val2>[ ...]]]
 #
 #  @output false
 #
 #  @description
 #  Removes all given values from <arrayName>.
 #  description@
 #
 #  @notes
 #  - This method mutates <arrayName>. Use _.remove to remove elements from an
 #  array by predicate.
 #  notes@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' true 'sup' )
 #  $ _.pull arr 'hello' true
 #  $ echo "${#arr[@]}"
 #  > 3
 #  $ echo "${arr[@]}"
 #  > 2 foobar sup
 #  examples@
 #
 #  @dependencies
 #  functions/_/_arrayCopy.sh
 #  functions/_/_array.sh
 #  functions/array/difference.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  2 - internal error during processing
 #  returns@
 #
 #  @file functions/array/pull.sh
 ## */

function _.pull {
  declare -i turn=0
  local arrayName="$1"

  _._arrayCopy _tmpArray $arrayName || turn=1

  shift

  if (( turn == 0 )); then
    _._array _argsArray "$@" && \
    _.difference _newArray _tmpArray _argsArray && \
    _._arrayCopy $arrayName _newArray || \
    turn=2
  fi

  unset _tmpArray _newArray _argsArray

  return $turn
}
