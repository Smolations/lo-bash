## /* @function
 #  @usage _.max <val1>[, <val2>[, ...]]
 #
 #  @output true
 #
 #  @description
 #  Gets the maximum value of collection.
 #  description@
 #
 #  @notes
 #  - Uses `sort` behind the scenes, so follows those rules.
 #  notes@
 #
 #  @examples
 #  $ nums=(5 9 2 24 12 1 19.1 24.01 -4)
 #  $ _.max ${nums[@]}
 #  > 24.01
 #  examples@
 #
 #  @dependencies
 #  `sort`
 #  `tail`
 #  `tr`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - unsuccessful execution
 #  returns@
 #
 #  @file functions/math/max.sh
 ## */

function _.max {
  declare -i turn=0
  local args=`tr ' ' "\n" <<< "$@"`
  sort -g <<< "$args" | tail -n1
}

