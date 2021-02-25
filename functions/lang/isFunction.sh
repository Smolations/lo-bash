## /* @function
 #  @usage lo::isFunction <name>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a Bash function.
 #  description@
 #
 #  @examples
 #  # script.sh
 #  foo {
 #    # ...
 #  }
 #  lo::isFunction foo && echo "yup"
 #  examples@
 #
 #  @dependencies
 #  `type`
 #  dependencies@
 #
 #  @returns
 #  0 - <name> is a defined function
 #  1 - <name> is NOT a defined function
 #  returns@
 #
 #  @file functions/lang/isFunction.sh
 ## */

function lo::isFunction {
  local tipe=`type -t $1 2>/dev/null`
  [[ "$tipe" == 'function' ]]
}
