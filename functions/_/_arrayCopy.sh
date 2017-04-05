## /* @function
 #  @usage _._arrayCopy <destArrayName> <srcArrayName>
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
 #  $ _._arrayCopy resultArray testArray
 #  $ echo ${resultArray[2]}
 #  > hello there
 #  examples@
 #
 #  @dependencies
 #  `eval`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - copy operation failed
 #  returns@
 #
 #  @file functions/_/_arrayCopy.sh
 ## */

function _._arrayCopy {
  local turn=1 arr_copy=$1 arr_orig=$2

  if _.isArray $arr_orig; then
    turn=0 eval "${arr_copy}=( \"\${${arr_orig}[@]}\" )"
  else
    eval "${arr_copy}="
  fi

  export $arr_copy
  return $turn
}
