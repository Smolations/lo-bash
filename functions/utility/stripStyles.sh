## /* @function
 #  @usage _stripStyles [<data_string> [<data_string2> [...]]]
 #
 #  @output true
 #
 #  @description
 #  In preparation for logging information (or sending information somewhere that
 #  does not play well with color codes) characters which designate colors are
 #  stripped from the input.
 #  description@
 #
 #  @dependencies
 #  `sed`
 #  dependencies@
 #
 #  @file functions/utility/stripStyles.sh
 ## */

function _stripStyles {
  local esc_seq=$'\x1b'
  sed 's/'${esc_seq}'\[[0-9;]*m//g' <<< "$@" \
  | sed 's/'${esc_seq}'(B//g'
}
