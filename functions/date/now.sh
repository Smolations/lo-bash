## /* @function
 #  @usage _.now
 #
 #  @output true
 #
 #  @description
 #  Gets the timestamp of the number of milliseconds that have elapsed since
 #  the Unix epoch (1 January 1970 00:00:00 UTC).
 #  description@
 #
 #  @examples
 #  $ _.now
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

function _.now {
  echo $(($(date +'%s * 1000 + %-N / 1000000')))
  return 0
}
