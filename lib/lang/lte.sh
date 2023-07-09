## /* @function
 #  @usage _lte <value> <other>
 #
 #  @output false
 #
 #  @description
 #  Checks if <value> is less than or equal to <other>.
 #  description@
 #
 #  @examples
 #  $ _lte 4 5 && echo "yup"
 #  > yup
 #  $ _lte 5 5 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _gt
 #  dependencies@
 #
 #  @returns
 #  0 - value <= other
 #  1 - value > other
 #  returns@
 #
 #  @file functions/lang/lte.sh
 ## */

function _lte {
  ! _gt $@
}
