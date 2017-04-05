## /* @function
 #  @usage _.add <num1> <num2>
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
 #  $ _.add 5 4
 #  > 9
 #  $ _.add 1.2 2.3
 #  > 3.5
 #  examples@
 #
 #  @dependencies
 #  functions/_/_math.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - any awk-related error from given arguments
 #  returns@
 #
 #  @file functions/math/add.sh
 ## */

function _.add {
  _._math "$1 + $2"
}

