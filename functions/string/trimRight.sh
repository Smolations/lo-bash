## /* @function
 #  @usage _::trim_right <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes trailing spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _::trim_right "  abc   "
 #  >    abc
 #  $ _::trim_right "-_-abc-_-" "_-"
 #  > -_-abc
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
 #  @file functions/string/trimRight.sh
 ## */

function _::trim_right() {
  local str="$1" chars=${2- }
  sed -E "s/[${chars}]+$//" <<< "$str"
  return 0
}
