## /* @function
 #  @usage _trim <string> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Removes leading and trailing spaces or specified <chars> from <string>.
 #  description@
 #
 #  @examples
 #  $ _trim "  abc  "
 #  > abc
 #  $ _trim "-_-abc-_-" "_-"
 #  > abc
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
 #  @file functions/string/trim.sh
 ## */

function _trim {
  local str="$1" chars=${2- }
  sed -E "s/^[${chars}]+|[${chars}]+$//g" <<< "$str"
  return 0
}
