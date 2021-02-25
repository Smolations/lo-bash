## /* @function
 #  @usage lo::trimRight <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes trailing spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ lo::trimRight "  abc   "
 #  >    abc
 #  $ lo::trimRight "-_-abc-_-" "_-"
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

function lo::trimRight {
  local str="$1" chars=${2- }
  sed -E "s/[${chars}]+$//" <<< "$str"
  return 0
}
