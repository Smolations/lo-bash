## /* @function
 #  @usage lo::eq <val1> <val2>
 #
 #  @output false
 #
 #  @description
 #  An alias for `lo::isEqual`.
 #  description@
 #
 #  @examples
 #  $ lo::eq 3 3 && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  lo::isEqual
 #  dependencies@
 #
 #  @returns
 #  0 - arguments are equal
 #  1 - arguments are NOT equal
 #  returns@
 #
 #  @file functions/lang/eq.sh
 ## */

function lo::eq {
  lo::isEqual $@
}

