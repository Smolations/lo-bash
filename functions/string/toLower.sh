## /* @function
 #  @usage lo::toLower <string>
 #
 #  @output true
 #
 #  @description
 #  Convert a string into all lowercase letters.
 #  description@
 #
 #  @examples
 #  lo::toLower "--Foo-Bar--"
 #  > --foo-bar--
 #
 #  lo::toLower "fooBar"
 #  > foobar
 #
 #  lo::toLower "__FOO_BAR__"
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

function lo::toLower {
  awk '{ print tolower($0) }' <<< "$@"
}
