## /* @function
 #  @usage lo::last <arrayName>
 #
 #  @output true
 #
 #  @description
 #  Gets the last element of <arrayName>.
 #  description@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' )
 #  $ lo::last arr
 #  > foobar
 #  examples@
 #
 #  @dependencies
 #  lb_arrayCopy
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  2 - array is empty
 #  returns@
 #
 #  @file functions/array/last.sh
 ## */

function lo::last {
  declare -i turn=0
  declare -i lastIndex
  local arrayName="$1" val=

  lb_arrayCopy _arrCopy $arrayName || turn=1

  if (( turn == 0 )); then
    let "lastIndex = ${#_arrCopy[@]} - 1"

    if (( lastIndex > -1 )); then
      val="${_arrCopy[lastIndex]}"
    else
      turn=2
    fi
  fi

  echo "$val"
  unset _arrCopy

  return $turn
}
