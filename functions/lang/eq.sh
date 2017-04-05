## /* @function
 #  @usage _.eq <val1> <val2>
 #
 #  @output false
 #
 #  @description
 #  An alias for `_.isEqual`.
 #  description@
 #
 #  @examples
 #  $ _.eq 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  functions/lang/isEqual.sh
 #  dependencies@
 #
 #  @returns
 #  0 - arguments are equal
 #  1 - arguments are NOT equal
 #  returns@
 #
 #  @file functions/lang/eq.sh
 ## */

function _.eq {
  _.isEqual $@
}

