## /* @function
 #  @usage lb_slash <string>
 #
 #  @output true
 #
 #  @description
 #  Something to do with escaping quotes...
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
 #  lb_slash
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

function lb_slash() {
  sed 's/"/\\"/g' <<< "$@"
}
