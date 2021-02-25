## /* @function
 #  @usage lo::replace <string> <pattern> <replacement>
 #
 #  @output true
 #
 #  @description
 #  Replaces matches for <pattern> in <string> with <replacement>.
 #  description@
 #
 #  @notes
 #  - Pattern is passed to `sed` and executed globally on the <string>. Be sure
 #  to escape forward slashes.
 #  notes@
 #
 #  @examples
 #  $ str="i am an ultimate-unicorn. bow before ME!"
 #  $ lo::replace "$str" "u" "a"
 #  > i am an altimate-anicorn. bow before ME!
 #  $ lo::replace "$str" "a[^ ]+" "x"
 #  > i x x ultimx bow before ME!
 #  $ lo::replace "some/file/path" "\/" "|"
 #  > some|file|path
 #  examples@
 #
 #  @dependencies
 #  `sed`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - error occurred during `sed` replacement
 #  returns@
 #
 #  @file functions/string/replace.sh
 ## */

function lo::replace {
  declare -i turn=0
  local str="$1" patt="$2" repl="$3"

  if [[ -z "$patt" ]]; then
    turn=1

  else
    sed -E "s/${patt}/${repl}/g" <<< "$str" || turn=1
  fi

  return $turn
}
