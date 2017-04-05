## /* @function
 #  @usage _._slash <string>
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
 #  _.
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
 #  @file functions/_/_slash.sh
 ## */

function _._slash {
  sed 's/"/\\"/g' <<< "$@"
}
