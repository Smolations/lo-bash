## /* @function
 #  @usage lo::lt <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than <other>.
 #  description@
 #
 #  @examples
 #  $ lo::lt 4 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  lo::gte
 #  dependencies@
 #
 #  @returns
 #  0 - value < other
 #  1 - value >= other
 #  returns@
 #
 #  @file functions/lang/lt.sh
 ## */

function lo::lt {
  ! lo::gte $@
}
