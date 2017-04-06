## /* @function
 #  @usage _.indexOf <arrayName> <value> <fromIndex=0>
 #
 #  @output true
 #
 #  @description
 #  Gets the index at which the first occurrence of value is found in array
 #  using SameValueZero for equality comparisons. If fromIndex is negative,
 #  it's used as the offset from the end of array.
 #  description@
 #
 #  @notes
 #  notes@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' true 'hello' )
 #  $ _.indexOf arr 2
 #  > 0
 #  $ _.indexOf arr "hello"
 #  > 1
 #  $ _.indexOf arr "hello" 2
 #  > 4
 #  $ _.indexOf arr true
 #  > 3
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  2 - <fromIndex> is greater than the length of the given array
 #  returns@
 #
 #  @file functions/array/indexOf.sh
 ## */

function _.indexOf {
  local turn=0 arrayName="$1" needle="$2" fromIndex=${3-0} ndx=

  _._arrayCopy arrCopy $arrayName || turn=1
  (( fromIndex <= ${#arrCopy[@]} )) || turn=2

  if (( turn == 0 )); then
    for (( i = fromIndex; i < ${#arrCopy[@]}; i++ )); do
      if [ "${arrCopy[i]}" = "$needle" ]; then
        ndx=$i
        break
      fi
    done
  fi

  unset arrCopy
  echo $ndx

  return $turn
}
