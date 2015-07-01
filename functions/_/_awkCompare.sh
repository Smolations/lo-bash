
# when doing comparisons, awk prints 1 for true, and 0 for false
# valid ops:  < <= > >= ++ != ~ !~
function _._awkCompare {
  local turn=1
  _._awkPrint "$@" | grep -qi '1' && turn=0
  return $turn
}

