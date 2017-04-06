## /* @function
 #  @usage _.last <arrayName>
 #
 #  @output true
 #
 #  @description
 #  Gets the last element of <arrayName>.
 #  description@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' )
 #  $ _.last arr
 #  > foobar
 #  examples@
 #
 #  @dependencies
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

function _.last {
  local lastIndex turn=0 arrayName="$1" val=

  _._arrayCopy arrCopy $arrayName || turn=1

  if (( turn == 0 )); then
    let "lastIndex = ${#arrCopy[@]} - 1"

    if [ "$lastIndex" != "-1" ]; then
      val="${arrCopy[lastIndex]}"
    else
      turn=2
    fi
  fi

  echo "$val"
  unset arrCopy

  return $turn
}
