## /* @function
 #  @usage _::string::starts_with <string> <target>
 #
 #  @output false
 #
 #  @description
 #  Checks if <string> starts with the given <target> string.
 #  description@
 #
 #  @examples
 #  $ _::string::starts_with "all bout that yolo" "all" && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - <string> starts with <target>
 #  1 - <string> does NOT start with <target>
 #  returns@
 #
 #  @file functions/string/startsWith.sh
 ## */

function _::string::starts_with() {
  declare -i turn=0
  local withoutPrefix="${1#${2}}"

  [[ "$1" == "$withoutPrefix" ]] && turn=1

  return $turn
}
