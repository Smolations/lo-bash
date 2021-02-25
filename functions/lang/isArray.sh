## /* @function
 #  @usage lo::isArray <arrayName>
 #
 #  @output false
 #
 #  @description
 #  Checks if value is classified as a Bash array.
 #  description@
 #
 #  @examples
 #  $ arr=()
 #  $ lo::isArray arr && echo "yup"
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

function lo::isArray {
  declare -ap $1 2> /dev/null | grep -q '^declare \-a'
}
