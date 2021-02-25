## /* @function
 #  @usage lo::toUpper <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all uppercase letters.
 #  description@
 #
 #  @examples
 #  $ lo::toUpper "--foo-bar--"
 #  > --FOO-BAR--
 #
 #  $ lo::toUpper "fooBar"
 #  > FOOBAR
 #
 #  $ lo::toUpper "__foo_bar__"
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

function lo::toUpper {
  awk '{ print toupper($0) }' <<< "$@"
}
