## /* @function
 #  @usage _::lt <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than <other>.
 #  description@
 #
 #  @examples
 #  $ _::lt 4 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _::gte
 #  dependencies@
 #
 #  @returns
 #  0 - value < other
 #  1 - value >= other
 #  returns@
 #
 #  @file functions/lang/lt.sh
 ## */

function _::lt() {
  ! _::gte $@
}
