## /* @function
 #  @usage lo::add <num1> <num2>
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
 #  $ lo::add 5 4
 #  > 9
 #  $ lo::add 1.2 2.3
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

function lo::add {
  lb_math "$1 + $2"
}

