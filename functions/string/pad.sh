## /* @function
 #  @usage _.pad <string=""> <length=0> <chars=" ">
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
 #  - You may have noticed that `printf` is quite capable of doing a job like
 #  this. It still poses the problem of having spaces (or a common variable)
 #  in the `printf` string.
 #  - Try to avoid any <char>'s which may conflict with basic `sed` regex.
 #  notes@
 #
 #  @examples
 #  $ echo "'`_.pad "abc" 8`'"
 #  > '  abc   '
 #
 #  $ _.pad "abc" 8 "_-"
 #  > _-abc_-_
 #
 #  $ _.pad "abc" 8 "123"
 #  > 12abc123
 #
 #  $ _.pad "abc"
 #  > abc
 #  examples@
 #
 #  @dependencies
 #  `cut`
 #  `egrep`
 #  `expr`
 #  functions/string/length.sh
 #  functions/string/repeat.sh
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  1 - an invalid <length> was passed (it wasn't recognized as a number)
 #  returns@
 #
 #  @file functions/string/pad.sh
 ##

function _.pad {
  local turn=0

  local str="$1" len=$2 chars="$3"
  local avail_for_pad chars_len chars_substr pad_freq prefix remainder result str_len suffix

  [ -z "$len" ] && len=0
  [ -z "$chars" ] && chars=' '

  chars_len=`_.length "$chars"`
  str_len=`_.length "$str"`

  ! egrep --quiet '^[0-9]+$' <<< "$len" && return 1

  if [ $str_len -lt $len ]; then
    avail_for_pad=`expr $len - $str_len`

    avail_for_start_pad=`expr $avail_for_pad / 2`
    avail_for_end_pad=`expr $avail_for_pad - $avail_for_start_pad`

    start_pad_remainder=`expr $avail_for_start_pad % $chars_len`
    end_pad_remainder=`expr $avail_for_end_pad % $chars_len`

    pad_freq=`expr $avail_for_pad / $chars_len + 1`

    prefix=`_.repeat "$chars" $pad_freq`
    prefix="${prefix:0:${avail_for_start_pad}}"
    suffix=`_.repeat "$chars" $pad_freq`
    suffix="${suffix:0:${avail_for_end_pad}}"
  fi

  echo "${prefix}${str}${suffix}"
  # ind=$( IFS=$'\n'; _.repeat "$chars" $num )
  # ( IFS=$'\n'; echo "${ind}${str}" )

}