## /* @function
 #  @usage _::math::min <val1>[, <val2>[, ...]]
 #
 #  @output true
 #
 #  @description
 #  Gets the minimum value of collection.
 #  description@
 #
 #  @notes
 #  - Uses `sort` behind the scenes, so follows those rules.
 #  notes@
 #
 #  @examples
 #  $ nums=(5 9 2 24 12 -4 1 19.1 24.01)
 #  $ _::math::min ${nums[@]}
 #  > -4
 #  examples@
 #
 #  @dependencies
 #  `head`
 #  `sort`
 #  `tr`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - unsuccessful execution
 #  returns@
 #
 #  @file functions/math/min.sh
 ## */

function _::math::min() {
  declare -i turn=0
  local args=`tr ' ' "\n" <<< "$@"`
  sort -g <<< "$args" | head -n1
}

