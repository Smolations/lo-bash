## /* @function
 #  @usage _::math::add <num1> <num2>
 #
 #  @output true
 #
 #  @description
 #  Adds two numbers.
 #  description@
 #
 #  @notes
 #  - Supports any awk-compatible numbers.
 #  notes@
 #
 #  @examples
 #  $ _::math::add 5 4
 #  > 9
 #  $ _::math::add 1.2 2.3
 #  > 3.5
 #  examples@
 #
 #  @dependencies
 #  lb_math
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - any awk-related error from given arguments
 #  returns@
 #
 #  @file functions/math/add.sh
 ## */

function _::math::add() {
  lb_math "$1 + $2"
}

