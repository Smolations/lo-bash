## /* @function
 #  @usage _startsWith <string> <target>
 #
 #  @output false
 #
 #  @description
 #  Checks if <string> starts with the given <target> string.
 #  description@
 #
 #  @examples
 #  $ _startsWith "all bout that yolo" "all" && echo "yup"
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

function _startsWith {
  declare -i turn=0
  local withoutPrefix="${1#${2}}"

  [[ "$1" == "$withoutPrefix" ]] && turn=1

  return $turn
}
