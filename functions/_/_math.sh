## /* @function
 #  @usage _._math <*>
 #
 #  @output true
 #
 #  @description
 #  Will perform basic math operations by passing them off to `awk`. This
 #  function *will* return floating point numbers depending on the given expression.
 #  The <operation> must be quoted so that operators won't clash with the system.
 #  Supported operations:
 #    + - * / ^ ** %
 #  description@
 #
 #  @notes
 #  - maximum precision: 16
 #  notes@
 #
 #  @examples
 #  $ _._math '2 + 2'
 #  > 4
 #  $ _._math '2 / 3'
 #  > 0.6666666666666666
 #  examples@
 #
 #  @dependencies
 #  `awk`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - any error returned from `awk`
 #  returns@
 #
 #  @file functions/_/_math.sh
 ## */

function _._math {
  local args=$@
  awk "BEGIN { printf(\"%.16g\",${args// /}) }"
}
