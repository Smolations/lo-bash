## /* @function
 #  @usage _::util::yes_no --default=<y|n> <question>
 #
 #  @output true
 #
 #  @exports
 #  $_raw_ans
 #  $_yes
 #  $_no
 #  exports@
 #
 #  @description
 #  This function provides an easy way for presenting yes/no questions and then
 #  using the answer (via exported variables) in script logic.
 #  description@
 #
 #  @options
 #  --default=<y|n>     Set whether the default answer is yes or no. Required.
 #  options@
 #
 #  @notes
 #  - A question mark is appended to the <question> by default, so there is no
 #  need for you to include it.
 #  notes@
 #
 #  @examples
 #  # ignore errors
 #  _::util::yes_no --default=n "Does this work"
 #  if [[ $_yes ]]; then
 #      ...
 #  fi
 #
 #  # OR
 #
 #  # take into account if there is an error during processing within _::util::yes_no
 #  if _::util::yes_no --default=n "Does this work" && [[ $_yes ]]; then
 #      ...
 #  fi
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  `read`
 #  _::util::in_args
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - less than 2 arguments were passed to function
 #  2 - the --default option was not passed to function
 #  4 - an invalid value (or no value) was given for the --default option
 #  returns@
 #
 #  @file functions/utility/yesNo.sh
 ## */

function _::util::yes_no() {
  # __debug "_::util::yes_no() $@"

  local Q="${X}${B}" A="${X}${B}${COL_MAGENTA}" default question optN optY ans
  _raw_ans=
  _yes=
  _no=

  # must pass --default option AND question
  if [[ $# < 2 ]]; then
    return 1
  fi

  # the --default option is required.
  if ! _::util::in_args default "$@"; then
    return 2
  fi

  default="${_arg_val}"
  question="${_args_clipped[@]}"

  # set default to be lowercase
  default="${default//N/n}"
  default="${default//Y/y}"

  # validate input
  if [[ -z "$default" ]] || ! egrep -q '^[yn]$' <<< "$default"; then
    return 4
  fi

  optN=$([[ "$default" == "n" ]] && echo "${A}N${X}" || echo "n")
  optY=$([[ "$default" == "y" ]] && echo "${A}Y${X}" || echo "y")

  # -n to keep response on same line; -e to honor escapes like \n
  echo -ne "${Q}  ${question} ${X}[${optY}/${optN}]${Q}?${X}  "
  read ans
  # _::util::log "_::util::yes_no(): User answered '$ans'"
  [[ -z "$ans" ]] && ans=$default

  ans=$( egrep --only-matching '^[ynYN]$' <<< "$ans" 2>/dev/null )

  if [[ -n "$ans" ]]; then
    ans="${ans//Y/y}"
    ans="${ans//N/n}"
    _raw_ans=$ans

  else
    # this should get triggered when user answers something other than
    # the allowed characters
    _::util::yes_no --default=$default "$question"
  fi

  # _::util::log "_::util::yes_no(): \$_raw_ans after processing is '${_raw_ans}'"

  if [[ -z "$_raw_ans" ]] || [[ "$_raw_ans" == "$default" ]]; then
    [[ "$default" == "y" ]] && _yes=true || _no=true
  else
    [[ "$ans" == "y" ]] && _yes=true || _no=true
  fi

  export _yes _no _raw_ans
}