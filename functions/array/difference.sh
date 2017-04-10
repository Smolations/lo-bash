## /* @function
 #  @usage _.difference <newArrayName> <firstArray> <secondArray>
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
 #  $ _.difference resultArray arr1 arr2
 #  $ echo "${resultArray[@]}"
 #  > 1 3
 #  examples@
 #
 #  @dependencies
 #  functions/_/_arrayCopy.sh
 #  functions/lang/isArray.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid argument(s) given
 #  returns@
 #
 #  @file functions/array/difference.sh
 ## */

function _.difference {
  declare -i turn=1
  local new_array=$1 _difference= found=

  _._arrayCopy one $2
  _._arrayCopy two $3

  if _.isArray one && _.isArray two; then
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

    _._arrayCopy $new_array _difference
  fi

  return $turn
}
