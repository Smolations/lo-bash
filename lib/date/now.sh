## /* @function
 #  @usage _now
 #
 #  @output true
 #
 #  @description
 #  Gets the timestamp of the number of milliseconds that have elapsed since
 #  the Unix epoch (1 January 1970 00:00:00 UTC).
 #  description@
 #
 #  @examples
 #  $ _now
 #  > 1491411470000
 #  examples@
 #
 #  @dependencies
 #  `date`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  returns@
 #
 #  @file functions/date/now.sh
 ## */

# this actually can trigger errors for some reason:
# lib/date/now.sh: line 28: 1688839473 * 1000 + 026479437: value too great for base (error token is "026479437")
function _now {
  echo $(($(date +'%s * 1000 + %-N / 1000000')))
  return 0
}
