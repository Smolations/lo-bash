## /* @function
 #  @usage lb_slash <string>
 #
 #  @output true
 #
 #  @description
 #  Escaping double quotes in strings with backslashes.
 #  description@
 #
 #  @options
 #  options@
 #
 #  @notes
 #  -
 #  notes@
 #
 #  @examples
 #  lb_slash '""'
 #  > \"\"
 #  examples@
 #
 #  @dependencies
 #  `sed`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - any error returned from `sed`
 #  returns@
 #
 #  @file functions/_/lb_slash.sh
 ## */

function lb_slash {
  sed 's/"/\\"/g' <<< "$@"
}
