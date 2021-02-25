## /* @function
 #  @usage _::lte <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than or equal to <other>.
 #  description@
 #
 #  @examples
 #  $ _::lte 4 5 && echo "yup"
 #  > yup
 #  $ _::lte 5 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _::gt
 #  dependencies@
 #
 #  @returns
 #  0 - value <= other
 #  1 - value > other
 #  returns@
 #
 #  @file functions/lang/lte.sh
 ## */

function _::lte() {
  ! _::gt $@
}
