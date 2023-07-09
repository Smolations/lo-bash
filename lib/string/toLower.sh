## /* @function
 #  @usage _toLower <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all lowercase letters.
 #  description@
 #
 #  @examples
 #  _toLower "--Foo-Bar--"
 #  > --foo-bar--
 #
 #  _toLower "fooBar"
 #  > foobar
 #
 #  _toLower "__FOO_BAR__"
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

function _toLower {
  awk '{ print tolower($0) }' <<< "$@"
}
