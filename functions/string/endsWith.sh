## /* @function
 #  @usage _::ends_with <string> <target>
 #
 #  @output false
 #
 #  @description
 #  Checks if <string> ends with the given <target> string.
 #  description@
 #
 #  @notes
 #  notes@
 #
 #  @examples
 #  $ _::ends_with "all bout that yolo" "yolo" && echo "yup"
 #  > yup
 #  examples@
 #
 #  @dependencies
 #  dependencies@
 #
 #  @returns
 #  0 - <string> ends with <target>
 #  1 - <string> does NOT end with <target>
 #  returns@
 #
 #  @file functions/string/endsWith.sh
 ## */

function _::ends_with() {
  declare -i turn=0
  local withoutSuffix="${1%${2}}"

  [[ "$1" == "$withoutSuffix" ]] && turn=1

  return $turn
}
