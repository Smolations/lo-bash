## /* @function
 #  @usage _.join <arrayName> <separator=" ">
 #
 #  @output true
 #
 #  @description
 #  Converts all elements in <arrayName> into a string separated by <separator>.
 #  description@
 #
 #  @notes
 #  - Unlike lo-dash, it makes more sense to use a space as the default
 #  <separator> as opposed to a comma.
 #  notes@
 #
 #  @examples
 #  $ arr=( 'a' 'b' 'c' )
 #  $ _.join arr '~'
 #  > a~b~c
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - invalid <arrayName> given
 #  returns@
 #
 #  @file functions/array/join.sh
 ## */

function _.join {
  declare -i turn=0
  local arrayName="$1" sep="${2- }" str=""

  _._arrayCopy _tmpArray $arrayName || turn=1

  if (( turn == 0 )); then
    for (( i = 0; i < ${#_tmpArray[@]}; i++ )); do
      str+="${_tmpArray[i]}${sep}"
    done
  fi

  echo "${str%${sep}}"
  unset _tmpArray

  return $turn
}
