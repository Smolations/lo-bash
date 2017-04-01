# creates a variable that holds an array

function _._array {
  local turn=1

  if [ $# -gt 0 ]; then
    local arr_name=$1 array_string='' num
    shift

    num=$#
    for (( i = 0; i < num; i++)); do
      array_string+=" [${i}]=\"`_._slash "${1}"`\"" && shift
    done

    eval "${arr_name}=(${array_string} )" && turn=$?
    export $arr_name
  fi

  return $turn
}
