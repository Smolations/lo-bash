## /* @function
 #  @usage _trimRight <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes trailing spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _trimRight "  abc   "
 #  >    abc
 #  $ _trimRight "-_-abc-_-" "_-"
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

function _trimRight {
  local str="$1" chars=${2- }
  sed -E "s/[${chars}]+$//" <<< "$str"
  return 0
}
