## /* @function
 #  @usage _.shortAns <prompt>
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
 #  _.shortAns "Enter your Git user name:"
 #  if [[ -n "$_ans" ]]; then
 #      git config --global user.name "$_ans"
 #      ...
 #  fi
 #
 #  # OR
 #
 #  # account for any errors during processing within the function
 #  if _.shortAns "Enter your Git user name:" && [[ -n "$_ans" ]]; then
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
 #  @file functions/utility_.shortAns.sh
 ## */

function _.shortAns {
  [[ $# == 0 ]] && return 1

  _ans=
  local prompt="$@"

  echo -ne "${Q}  ${prompt}${X}  "
  read _ans

  export _ans
}
