## /* @function
 #  @usage _.toLower <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all lowercase letters.
 #  description@
 #
 #  @examples
 #  _.toLower "--Foo-Bar--"
 #  > --foo-bar--
 #
 #  _.toLower "fooBar"
 #  > foobar
 #
 #  _.toLower "__FOO_BAR__"
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

function _.toLower {
  awk '{ print tolower($0) }' <<< "$@"
}
