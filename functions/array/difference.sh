## /* @function
 #  @usage _::array::difference <newArrayName> <firstArray> <secondArray>
 #
 #  @output false
 #
 #  @exports
 #  $<newArrayName>
 #  exports@
 #
 #  @description
 #  Creates an array of unique array values not included in the other provided arrays.
 #  description@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  $ arr1=( 1 2 3 )
 #  $ arr2=( 4 2 )
 #  $ _::array::difference resultArray arr1 arr2
 #  $ echo "${resultArray[@]}"
 #  > 1 3
 #  examples@
 #
 #  @dependencies
 #  lb_arrayCopy
 #  _::is_array
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid argument(s) given
 #  returns@
 #
 #  @file functions/array/difference.sh
 ## */

function _::array::difference() {
  declare -i turn=1
  local new_array=$1 difference= found=

  lb_arrayCopy one $2
  lb_arrayCopy two $3

  if _::lang::is_array one && _::lang::is_array two; then
    difference=() turn=0

    for (( i = 0; i < ${#one[@]}; i++ )); do
      found=

      for (( j = 0; j < ${#two[@]}; j++ )); do
        if [ "${one[i]}" == "${two[j]}" ]; then
          found=true
        fi
        [[ $found ]] && break
      done

      [[ ! $found ]] && difference+=("${one[i]}")
    done

    lb_arrayCopy $new_array difference
  fi

  return $turn
}
