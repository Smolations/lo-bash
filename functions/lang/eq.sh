## /* @function
 #  @usage _eq <val1> <val2>
 #
 #  @output false
 #
 #  @description
 #  An alias for `_isEqual`.
 #  description@
 #
 #  @examples
 #  $ _eq 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  _isEqual
 #  dependencies@
 #
 #  @returns
 #  0 - arguments are equal
 #  1 - arguments are NOT equal
 #  returns@
 #
 #  @file functions/lang/eq.sh
 ## */

function _eq {
  _isEqual $@
}

