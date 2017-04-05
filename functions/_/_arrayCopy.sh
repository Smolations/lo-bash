## /* @function
 #  @usage _.
 #
 #  @output true
 #
 #  @exports
 #  exports@
 #
 #  @description
 #
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  _.
 #  examples@
 #
 #  @dependencies
 #  ``
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 -
 #  returns@
 #
 #  @file functions//.sh
 ## */
# _._arrayCopy newArrayName existingArrayName
# @exports $1
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
