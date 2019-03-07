## /* @function
 #  @usage _trimLeft <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes leading spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _trimLeft "  abc"
 #  > abc
 #  $ _trimLeft "-_-abc-_-" "_-"
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

function _trimLeft {
  local str="$1" chars=${2- }
  sed -E "s/^[${chars}]+//" <<< "$str"
  return 0
}
