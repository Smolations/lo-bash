## /* @function
 #  @usage _::string::pad_start <string=""> <length=0> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Pads string on the left side if it’s shorter than <length>. Padding
 #  characters (<chars>) are truncated if they exceed <length>.
 #  description@
 #
 #  @notes
 #  - Note that <chars> doesn't have to be a single character.
 #  - If an invalid <length> is supplied, it will be casted to 0.
 #  - You may have noticed that `printf` is quite capable of doing a job like
 #  this. It still poses the problem of having spaces (or a common variable)
 #  in the `printf` string.
 #  - Try to avoid any <char>'s which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ _::string::pad_start "abc"
 #  >    abc
 #
 #  $ _::string::pad_start "abc" 6 "_-"
 #  > _-_abc
 #
 #  $ _::string::pad_start "abc"
 #  > abc
 #  examples@
 #
 #  @dependencies
 #  `expr`
 #  _::repeat
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - an invalid <length> was passed (it wasn't recognized as a number)
 #  returns@
 #
 #  @file functions/string/padStart.sh
 ##

function _::string::pad_start() {
  declare -i turn=0
  declare -i len=${2-0}
  declare -i avail_for_pad
  declare -i chars_len
  declare -i pad_freq
  declare -i str_len

  local str="$1" chars="${3- }" prefix

  chars_len=${#chars}
  str_len=${#str}

  if (( str_len < len )); then
    avail_for_pad=`expr $len - $str_len`
    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    prefix=`_::string::repeat "$chars" $pad_freq`
    prefix="${prefix:0:${avail_for_pad}}"
  fi

  echo "${prefix}${str}"
  # ind=$( IFS=$'\n'; _::string::repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

  return $turn
}
