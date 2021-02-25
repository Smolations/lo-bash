## /* @function
 #  @usage _::string::to_upper <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all uppercase letters.
 #  description@
 #
 #  @examples
 #  $ _::string::to_upper "--foo-bar--"
 #  > --FOO-BAR--
 #
 #  $ _::string::to_upper "fooBar"
 #  > FOOBAR
 #
 #  $ _::string::to_upper "__foo_bar__"
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

function _::string::to_upper() {
  awk '{ print toupper($0) }' <<< "$@"
}
