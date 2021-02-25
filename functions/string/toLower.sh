## /* @function
 #  @usage _::to_lower <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all lowercase letters.
 #  description@
 #
 #  @examples
 #  _::to_lower "--Foo-Bar--"
 #  > --foo-bar--
 #
 #  _::to_lower "fooBar"
 #  > foobar
 #
 #  _::to_lower "__FOO_BAR__"
 #  > __foo_bar__
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
 #  @file functions/string/toLower.sh
 ## */

function _::to_lower() {
  awk '{ print tolower($0) }' <<< "$@"
}
