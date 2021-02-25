## /* @function
 #  @usage _::util::short_ans <prompt>
 #
 #  @output true
 #
 #  @exports
 #  $_ans
 #  exports@
 #
 #  @description
 #  This function provides an easy way for presenting short answer questions and
 #  then using the answer (via $_ans) in script logic.
 #  description@
 #
 #  @notes
 #  - While this function exports a variable with the same name as an exported
 #  variable in `__yes_no`, there is no need to worry about conflicts. Since each
 #  overrides the other, the exported variable should have already been used by
 #  the time the other function is run.
 #  notes@
 #
 #  @examples
 #  # ignore errors
 #  _::util::short_ans "Enter your Git user name:"
 #  if [[ -n "$_ans" ]]; then
 #      git config --global user.name "$_ans"
 #      ...
 #  fi
 #
 #  # OR
 #
 #  # account for any errors during processing within the function
 #  if _::util::short_ans "Enter your Git user name:" && [[ -n "$_ans" ]]; then
 #      git config --global user.name "$_ans"
 #      ...
 #  fi
 #  examples@
 #
 #  @returns
 #  0 - successful execution
 #  1 - no arguments were passed to function
 #  returns@
 #
 #  @file functions/utility/_::util::short_ans.sh
 ## */

function _::util::short_ans() {
  declare -i turn=0
  local prompt

  _ans=

  if (( $# == 0 )); then
    turn=1

  else
    prompt="$@"

    echo -ne "${Q}  ${prompt}${X}  "
    read _ans
  fi

  export _ans

  return $turn
}
