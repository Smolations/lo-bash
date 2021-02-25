## /* @function
 #  @usage _::string::trim_left <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes leading spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _::string::trim_left "  abc"
 #  > abc
 #  $ _::string::trim_left "-_-abc-_-" "_-"
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

function _::string::trim_left() {
  local str="$1" chars=${2- }
  sed -E "s/^[${chars}]+//" <<< "$str"
  return 0
}
