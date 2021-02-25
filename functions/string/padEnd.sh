## /* @function
 #  @usage _::pad_end <string=""> <length=0> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Pads string on the right side if it’s shorter than <length>. Padding
 #  characters (<chars>) are truncated if they exceed <length>.
 #  description@
 #
 #  @notes
 #  - Note that <chars> doesn't have to be a single character.
 #  - If an invalid <length> is supplied, it will be casted to 0.
 #  - You may have noticed that `printf` is quite capable of doing a job like
 #  this. It still poses the problem of having spaces (or a common variable)
 #  in the `printf` string.
 #  - Try to avoid any <chars> which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ echo "'`_::pad_end "abc" 6`'"
 #  > 'abc   '
 #
 #  $ _::pad_end "abc" 6 "_-"
 #  > abc_-_
 #
 #  $ _::pad_end "abc" 3
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
 #  returns@
 #
 #  @file functions/string/padEnd.sh
 ##

function _::pad_end() {
  declare -i turn=0
  declare -i len=${2-0}
  declare -i avail_for_pad
  declare -i chars_len
  declare -i pad_freq
  declare -i str_len

  local str="$1" chars="${3- }" suffix

  chars_len=${#chars}
  str_len=${#str}

  if (( str_len < len )); then
    avail_for_pad=`expr $len - $str_len`
    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    suffix=`_::repeat "$chars" $pad_freq`
    suffix="${suffix:0:${avail_for_pad}}"
  fi

  echo "${str}${suffix}"
  # ind=$( IFS=$'\n'; _::repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

  return $turn
}
