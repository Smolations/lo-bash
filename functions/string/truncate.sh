## /* @function
 #  @usage _::string::truncate [--length=<num>] [--omission=<string>] [--separator=<string>] <string="">
 #
 #  @output true
 #
 #  @description
 #  Truncates string if it’s longer than the given maximum string length. The
 #  last characters of the truncated string are replaced with the omission
 #  string which defaults to "...".
 #  description@
 #
 #  @options
 #  --length=<number>    The maximum string length. Defaults to 30.
 #  --omission=<string>  The string to indicate text is omitted. Default is "...".
 #  --separator=<string> The separator pattern to truncate to.
 #  options@
 #
 #  @notes
 #  - Note that <chars> doesn't have to be a single character.
 #  - You may have noticed that `printf` is quite capable of doing a job like
 #  this. It still poses the problem of having spaces (or a common variable)
 #  in the `printf` string.
 #  - Try to avoid any <char>'s which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ _::string::truncate "hi-diddly-ho there, neighborino"
 #  > hi-diddly-ho there, neighbo...
 #
 #  $ _::string::truncate --length=24 --separator=' ' "hi-diddly-ho there, neighborino"
 #  > hi-diddly-ho there,...
 #
 #  $ _::string::truncate --omission=' [...]' "hi-diddly-ho there, neighborino"
 #  > hi-diddly-ho there, neig [...]
 #  examples@
 #
 #  @dependencies
 #  `expr`
 #  _::util::in_args
 #  _::is_number
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - an invalid <length> was passed (it wasn't recognized as a number)
 #  returns@
 #
 #  @file functions/string/truncate.sh
 ##

function _::string::truncate() {
  declare -i turn=0
  declare -i len=30
  declare -i new_len
  declare -i omission_len
  declare -i str_len
  local omission="..." sep= str=

  _::util::in_args length "$@" && len="$_arg_val"
  _::util::in_args omission "${_args_clipped[@]}" && omission="$_arg_val"
  _::util::in_args separator "${_args_clipped[@]}" && sep="$_arg_val"

  str="${_args_clipped[@]}"

  omission_len=${#omission}
  str_len=${#str}

  if (( str_len > len )); then
    new_len=`expr $len - $omission_len`

    if [[ -n "$sep" ]]; then
      str="${str%${sep}*}${omission}"
    else
      str="${str:0:$new_len}${omission}"
    fi
  fi

  echo $str

  return $turn
}
