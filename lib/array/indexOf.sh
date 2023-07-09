## /* @function
 #  @usage _indexOf <arrayName> <value> <fromIndex=0>
 #
 #  @output true
 #
 #  @description
 #  Gets the index at which the first occurrence of <value> is found in the
 #  array using SameValueZero for equality comparisons. If <fromIndex> is
 #  negative, it's used as the offset from the end of array.
 #  description@
 #
 #  @options
 #  --regex=<pattern>  Instead of looking for an exact match of an element,
 #                     treat the <value> as a pattern instead. The first match
 #                     determines the returned index. Extended regex patterns
 #                     are supported (i.e. `grep -E`).
 #  options@
 #
 #  @notes
 #  notes@
 #
 #  @examples
 #  $ arr=( 2 'hello' 'foobar' true 'hello' )
 #  $ _indexOf arr 2
 #  > 0
 #  $ _indexOf arr "hello"
 #  > 1
 #  $ _indexOf arr "hello" 2
 #  > 4
 #  $ _indexOf arr true
 #  > 3
 #  $ _indexOf --regex arr '^foo'
 #  > 2
 #  examples@
 #
 #  @dependencies
 #  lb_arrayCopy
 #  _inArgs
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

function _indexOf {
  declare -i turn=0
  declare -i fromIndex=0
  declare -i ndx
  local pattern=false
  local arrayName needle

  if _inArgs regex "$@"; then
    pattern=true
  fi

  arrayName="${_args_clipped[0]}"
  needle="${_args_clipped[1]}"
  [[ ${#_args_clipped[@]} == 3 ]] && fromIndex=${_args_clipped[2]}

  lb_arrayCopy arrCopy $arrayName || turn=1
  (( fromIndex <= ${#arrCopy[@]} )) || turn=2

  if (( turn == 0 )); then
    for (( i = fromIndex; i < ${#arrCopy[@]}; i++ )); do
      if $pattern && grep -Eq "$needle" <<< "${arrCopy[i]}" || [[ "${arrCopy[i]}" == "$needle" ]]; then
        ndx=$i
        break
      fi
    done
  fi

  unset arrCopy
  echo $ndx

  return $turn
}
