## /* @function
 #  @usage _.trimLeft <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes leading spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _.trimLeft "  abc"
 #  > abc
 #  $ _.trimLeft "-_-abc-_-" "_-"
 #  > abc-_-
 #  examples@
 #
 #  @dependencies
 #  `sed`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/string/trimLeft.sh
 ## */

function _.trimLeft {
  local str="$1" chars=${2- }
  sed -E "s/^[${chars}]+//" <<< "$str"
  return 0
}
