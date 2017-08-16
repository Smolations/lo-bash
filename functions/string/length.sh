## /* @function
 #  @usage _.length <string>
 #
 #  @output true
 #
 #  @description
 #  Calculate the number of characters in a given <string>.
 #  description@
 #
 #  @notes
 #  - This WILL count newline characters!
 #  - Escape sequences for colors are removed before calculating the <string>
 #  length.
 #  notes@
 #
 #  @examples
 #  $ _.length "hey mom"
 #  > 7
 #  examples@
 #
 #  @dependencies
 #  `wc`
 #  `tr`
 #  `egrep`
 #  functions/__strip_color_codes.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - an error occurred with `wc` or `tr` used to get character count
 #  returns@
 #
 #  @file functions/string/length.sh
 ## */

function _.length {
  declare -i turn=0
  declare -i len

  if [[ -z "$@" ]]; then
    len=0

  else
    # len=$( __strip_color_codes "$@" | wc -c | tr -d '\n\t ' )
    len=$( echo "$@" | wc -c | tr -d '\n\t ' )

    # \d not working in ubuntu bash4 for some reason...
    if egrep -q '^[0-9]+$' <<< "$len"; then
      (( len-- ))
    else
      turn=1
    fi
  fi

  (( turn == 0 )) && echo $len

  return $turn
}
