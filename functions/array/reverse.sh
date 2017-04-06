## /* @function
 #  @usage _.reverse <arrayName>
 #
 #  @output false
 #
 #  @description
 #  Reverses <arrayName> so that the first element becomes the last, the second
 #  element becomes the second to last, and so on.
 #  description@
 #
 #  @notes
 #  - This method mutates <arrayName>.
 #  notes@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' true )
 #  $ _.reverse arr
 #  $ echo "${arr[0]}"
 #  > true
 #  $ echo "${arr[3]}"
 #  > 2
 #  examples@
 #
 #  @dependencies
 #  functions/_/_arrayCopy.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - given <arrayName> is invalid
 #  2 - unable to mutate <arrayName>
 #  returns@
 #
 #  @file functions/array/reverse.sh
 ## */

function _.reverse {
  local turn=0 arrayName="$1" _newArray=( )

  _._arrayCopy _tmpArray $arrayName || turn=1

  if (( turn == 0 )); then
    for (( i = ${#_tmpArray[@]} - 1; i > -1 ; i-- )); do
      _newArray+=( "${_tmpArray[i]}" )
    done

    _._arrayCopy $arrayName _newArray || turn=2
  fi

  unset _newArray _tmpArray

  return $turn
}
