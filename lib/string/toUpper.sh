## /* @function
 #  @usage _toUpper <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all uppercase letters.
 #  description@
 #
 #  @examples
 #  $ _toUpper "--foo-bar--"
 #  > --FOO-BAR--
 #
 #  $ _toUpper "fooBar"
 #  > FOOBAR
 #
 #  $ _toUpper "__foo_bar__"
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

function _toUpper {
  awk '{ print toupper($0) }' <<< "$@"
}
