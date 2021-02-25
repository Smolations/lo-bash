## /* @function
 #  @usage _::lang::eq <val1> <val2>
 #
 #  @output false
 #
 #  @description
 #  An alias for `_::is_equal`.
 #  description@
 #
 #  @examples
 #  $ _::lang::eq 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _::is_equal
 #  dependencies@
 #
 #  @returns
 #  0 - arguments are equal
 #  1 - arguments are NOT equal
 #  returns@
 #
 #  @file functions/lang/eq.sh
 ## */

function _::lang::eq() {
  _::lang::is_equal $@
}

