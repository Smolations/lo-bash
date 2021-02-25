## /* @function
 #  @usage lo::lte <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than or equal to <other>.
 #  description@
 #
 #  @examples
 #  $ lo::lte 4 5 && echo "yup"
 #  > yup
 #  $ lo::lte 5 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  lo::gt
 #  dependencies@
 #
 #  @returns
 #  0 - value <= other
 #  1 - value > other
 #  returns@
 #
 #  @file functions/lang/lte.sh
 ## */

function lo::lte {
  ! lo::gt $@
}
