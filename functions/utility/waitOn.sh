## /* @function
 #  @usage _waitOn [--max-time=<seconds>] <processID> [<wait_message>]
 #
 #  @output true
 #
 #  @exports
 #  $_exit_status
 #  exports@
 #
 #  @description
 #  This function will present an animated status line while waiting for a given
 #  <processID> to complete, and then present the exit status when it is finished.
 #  For convenience, it will export the exit status into a variable for further use
 #  in calling scripts. If a <wait_message> is not provided, a generic message will
 #  be used. The default max wait time (--max-time) is 120 seconds (2 minutes).
 #  description@
 #
 #  @options
 #  --max-time=<seconds>     Integer specifying the maximum number of seconds to
 #                           wait for the given process to complete.
 #  options@
 #
 #  @notes
 #  - The easiest way to use this function is to acquire the process ID after
 #  sending a process the the background, as seen in the example below.
 #  - This function will return a failure exit status if the maximum wait time is
 #  reached or if an invalid process ID (must be an integer) is given.
 #  notes@
 #
 #  @examples
 #  ./some_script.sh &
 #  thePID=$!
 #  if ! _waitOn --max-time=60 $thePID "Running my special script..."; then
 #    ...
 #  fi
 #  examples@
 #
 #  @dependencies
 #  `egrep`
 #  `ps`
 #  `sleep`
 #  `wait`
 #  _inArgs
 #  dependencies@
 #
 #  @returns
 #  0 - function executed successfully
 #  1 - no arguments passed to function
 #  2 - value of --max-time option is not a number
 #  4 - value of <processID> is invalid
 #  8 - unable to acquire final exit status
 #  returns@
 #
 #  @file functions/utility/waitOn.sh
 ## */

function _waitOn {
  [[ $# == 0 ]] && return 1

  local maxWait thePID argsMsg indicators i modNum exitMsg waitMsg argsClipped

  if _inArgs 'max-time' "$@"; then
    if egrep --quiet '^[0-9]+$' <<< "${_arg_val}"; then
      maxWait="${_arg_val}"
    else
      # __err "_waitOn:  --max-time option should have an integer value! Using default..."
      return 2
    fi
    shift
  fi

  argsClipped="${_args_clipped[@]}"
  # echo "argsClipped = ${argsClipped}"

  thePID="${argsClipped%% *}"
  waitMsg="Waiting for process ${COL_CYAN}${thePID}${X} to complete..."

  if ! egrep --quiet '^[0-9]+$' <<< "$thePID"; then
    # __err "_waitOn expects a valid process ID as the first parameter!"
    return 4
  fi

  argsMsg="${argsClipped#* }"

  # check for user-supplied wait message...
  egrep -q '[a-zA-Z]' <<< "$argsMsg" && waitMsg="$argsMsg"

  # cycle through these to display an "animated" gif
  # indicators=( '/' '-' '\' '|')
  # indicators=( '   ' '.  ' '.o ' '.oO' )
  # indicators=( '.' 'o' 'O' 'o' )
  indicators=( '\\' '/' )

  # max wait time in seconds
  [[ -z "$maxWait" ]] && maxWait=120

  # __log "_waitOn: PID(${thePID})  ${waitMsg} | ${maxWait} seconds"

  i=1
  _exit_status=
  while [[ $i < $maxWait ]]; do
    if ps -p${thePID} &> /dev/null; then
      modNum=$(( i % ${#indicators[@]} ))
      echo -en " ${B}${COL_MAGENTA}${indicators[$modNum]}${X}  ${waitMsg} \r"
      sleep 1

    else
      wait $thePID
      _exit_status=$?

      exitMsg="(${E}exit ${_exit_status}${X})"
      [[ ${_exit_status} == 0 ]] && exitMsg="(${COL_GREEN}exit ${_exit_status}${X})"

      echo "    ${waitMsg}    ${exitMsg} ${i} sec."

      break
    fi
    (( i++ ))
  done

  # __log   "_waitOn:  _exit_status = ${_exit_status}"
  export _exit_status

  if [[ -z "${_exit_status}" ]]; then
    return 8
  else
    return 0
  fi
}
