## /* @function
 #  @usage _._awkCompare
 #
 #  @output true
 #
 #  @description
 #  Pass comparison expressions to this function for `awk` to evaluate. This is
 #  ideal for comparing floating point numbers. Supported operators:
 #    < <= > >= ++ != ~ !~
 #  See `awk` docs for more information.
 #  description@
 #
 #  @notes
 #  - No error will be returned if other operations are used, but the function
 #  will always evaluate to false as `awk` returns 0 for false and 1 for true.
 #  notes@
 #
 #  @examples
 #  $ _._awkCompare "3 > 4" || echo "dang"
 #  > dang
 #  examples@
 #
 #  @dependencies
 #  `grep`
 #  functions/_/_awkPrint.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - `awk` returned something other than 1
 #  returns@
 #
 #  @file functions/_/_awkCompare.sh
 ## */

function _._awkCompare {
  local turn=1
  _._awkPrint "$@" | grep -qi '1' && turn=0
  return $turn
}

