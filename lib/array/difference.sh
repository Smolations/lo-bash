## /* @function
 #  @usage _difference <newArrayName> <firstArray> <secondArray>
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
 #  $ _difference resultArray arr1 arr2
 #  $ echo "${resultArray[@]}"
 #  > 1 3
 #  examples@
 #
 #  @dependencies
 #  lb_arrayCopy
 #  _isArray
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid argument(s) given
 #  returns@
 #
 #  @file functions/array/difference.sh
 ## */

function _difference {
  declare -i turn=1
  local new_array=$1 _difference= found=

  lb_arrayCopy one $2
  lb_arrayCopy two $3

  if _isArray one && _isArray two; then
    _difference=() turn=0

    for (( i = 0; i < ${#one[@]}; i++ )); do
      found=

      for (( j = 0; j < ${#two[@]}; j++ )); do
        if [ "${one[i]}" == "${two[j]}" ]; then
          found=true
        fi
        [[ $found ]] && break
      done

      [[ ! $found ]] && _difference+=("${one[i]}")
    done

    lb_arrayCopy $new_array _difference
  fi

  return $turn
}
