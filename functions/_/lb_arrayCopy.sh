## /* @function
 #  @usage lb_arrayCopy <destArrayName> <srcArrayName>
 #
 #  @output false
 #
 #  @exports
 #  $<destArrayName>
 #  exports@
 #
 #  @description
 #  Copies an array.
 #  description@
 #
 #  @examples
 #  $ test_array=(1 '' 'hello there' 'umm' 'your "business" eh?')
 #  $ lb_arrayCopy resultArray testArray
 #  $ echo ${resultArray[2]}
 #  > hello there
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  lo::isArray
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - copy operation failed
 #  returns@
 #
 #  @file functions/_/lb_arrayCopy.sh
 ## */

function lb_arrayCopy {
  declare -i turn=1
  local arr_copy=$1 arr_orig=$2

  if lo::isArray $arr_orig; then
    turn=0
    eval "${arr_copy}=( \"\${${arr_orig}[@]}\" )"
  else
    eval "${arr_copy}="
  fi

  export $arr_copy
  return $turn
}
