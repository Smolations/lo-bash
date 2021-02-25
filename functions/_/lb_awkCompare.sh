## /* @function
 #  @usage lb_awkCompare
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
 #  $ lb_awkCompare "3 > 4" || echo "dang"
 #  > dang
 #  examples@
 #
 #  @dependencies
 #  `grep`
 #  lb_awkPrint
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - `awk` returned something other than 1
 #  returns@
 #
 #  @file functions/_/lb_awkCompare.sh
 ## */

function lb_awkCompare() {
  declare -i turn=1
  lb_awkPrint "$@" | grep -qi '1' && turn=0
  return $turn
}

