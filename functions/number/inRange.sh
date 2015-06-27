
function _.inRange {
  local turn=0 arg_count=$# from=0 to needle

  if (( arg_count < 2 )); then
    turn=1
  else
    needle=$1
    (( arg_count == 2 )) && to=$2
    (( arg_count == 3 )) && from=$2 to=$3

    (( needle > from && needle < to )); turn=$?
  fi

  return $turn
}
