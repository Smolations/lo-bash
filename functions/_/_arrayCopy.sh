
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
