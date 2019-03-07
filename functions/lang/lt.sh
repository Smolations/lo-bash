## /* @function
 #  @usage _lt <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than <other>.
 #  description@
 #
 #  @examples
 #  $ _lt 4 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _gte
 #  dependencies@
 #
 #  @returns
 #  0 - value < other
 #  1 - value >= other
 #  returns@
 #
 #  @file functions/lang/lt.sh
 ## */

function _lt {
  ! _gte $@
}
