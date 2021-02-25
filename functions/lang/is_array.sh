## /* @function
 #  @usage _::lang::is_array <arrayName>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a Bash array.
 #  description@
 #
 #  @examples
 #  $ arr=()
 #  $ _::lang::is_array arr && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  `declare`
 #  `grep`
 #  dependencies@
 #
 #  @returns
 #  0 - <arrayName> is an array
 #  * - <arrayName> is NOT an array
 #  returns@
 #
 #  @file functions/lang/isArray.sh
 ## */

function _::lang::is_array() {
  declare -ap $1 2> /dev/null | grep -q '^declare \-a'
}
