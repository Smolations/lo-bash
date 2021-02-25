## /* @function
 #  @usage _::string::pad <string=""> <length=0> <chars=" ">
 #
 #  @output true
 #
 #  @description
 #  Pads string on the left and right sides if it’s shorter than <length>. Padding
 #  Padding characters (<chars>) are truncated if they exceed <length>.
 #  description@
 #
 #  @options
 #  options@
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
 #  $ echo "'`_::string::pad "abc" 8`'"
 #  > '  abc   '
 #
 #  $ _::string::pad "abc" 8 "_-"
 #  > _-abc_-_
 #
 #  $ _::string::pad "abc" 8 "123"
 #  > 12abc123
 #
 #  $ _::string::pad "abc"
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
 #  @file functions/string/pad.sh
 ##

function _::string::pad() {
  declare -i turn=0
  declare -i len=${2-0}
  declare -i avail_for_end_pad
  declare -i avail_for_pad
  declare -i avail_for_start_pad
  declare -i chars_len
  declare -i end_pad_remainder
  declare -i pad_freq
  declare -i start_pad_remainder
  declare -i str_len

  local str="$1" chars="${3- }" prefix suffix

  chars_len=${#chars}
  str_len=${#str}

  if (( str_len < len )); then
    avail_for_pad=`expr $len - $str_len`

    avail_for_start_pad=`expr $avail_for_pad / 2`
    avail_for_end_pad=`expr $avail_for_pad - $avail_for_start_pad`

    start_pad_remainder=`expr $avail_for_start_pad % $chars_len`
    end_pad_remainder=`expr $avail_for_end_pad % $chars_len`

    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    prefix=`_::string::repeat "$chars" $pad_freq`
    prefix="${prefix:0:${avail_for_start_pad}}"
    suffix=`_::string::repeat "$chars" $pad_freq`
    suffix="${suffix:0:${avail_for_end_pad}}"
  fi

  echo "${prefix}${str}${suffix}"
  # ind=$( IFS=$'\n'; _::string::repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

  return $turn
}
