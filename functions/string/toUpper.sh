## /* @function
 #  @usage _::to_upper <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all uppercase letters.
 #  description@
 #
 #  @examples
 #  $ _::to_upper "--foo-bar--"
 #  > --FOO-BAR--
 #
 #  $ _::to_upper "fooBar"
 #  > FOOBAR
 #
 #  $ _::to_upper "__foo_bar__"
 #  > __FOO_BAR__
 #  examples@
 #
 #  @dependencies
 #  `awk`
 #  dependencies@
 #
 #  @returns
 #  exit code from `awk`
 #  returns@
 #
 #  @file functions/string/toUpper.sh
 ## */

function _::to_upper() {
  awk '{ print toupper($0) }' <<< "$@"
}
