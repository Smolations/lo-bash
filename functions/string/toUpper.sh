## /* @function
 #  @usage _.toUpper <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all uppercase letters.
 #  description@
 #
 #  @examples
 #  $ _.toUpper "--foo-bar--"
 #  > --FOO-BAR--
 #
 #  $ _.toUpper "fooBar"
 #  > FOOBAR
 #
 #  $ _.toUpper "__foo_bar__"
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

function _.toUpper {
  awk '{ print toupper($0) }' <<< "$@"
}
