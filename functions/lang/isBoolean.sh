
function _.isBoolean {
  local turn=0

  if [ "`type -t $1`" == 'builtin' ]; then
    [ "$1" != "true" -a "$1" != "false" ] && turn=2
  else
    turn=1
  fi

  return $turn
}

