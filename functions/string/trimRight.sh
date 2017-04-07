## /* @function
 #  @usage _.trimRight <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes trailing spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _.trimRight "  abc   "
 #  >    abc
 #  $ _.trimRight "-_-abc-_-" "_-"
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

function _.trimRight {
  local str="$1" chars=${2- }
  sed -E "s/[${chars}]+$//" <<< "$str"
  return 0
}
