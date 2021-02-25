## /* @function
 #  @usage _::string::to_lower <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all lowercase letters.
 #  description@
 #
 #  @examples
 #  _::string::to_lower "--Foo-Bar--"
 #  > --foo-bar--
 #
 #  _::string::to_lower "fooBar"
 #  > foobar
 #
 #  _::string::to_lower "__FOO_BAR__"
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

function _::string::to_lower() {
  awk '{ print tolower($0) }' <<< "$@"
}
