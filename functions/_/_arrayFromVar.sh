
# @returns '[0]="" [1]="" ...'
function _._arrayFromVar {
  local turn=1 arr=

  if _.isArray $1; then
    turn=0 arr=`declare -p $1 2> /dev/null` arr="${arr#*=}"
    arr=`_.trim "${arr[*]}" "'()"`
    echo $arr
  fi

  return $turn
}
