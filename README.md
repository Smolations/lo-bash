# lo-bash
A slimmed-down version of the helpful functions in lo-dash (and maybe a few extra)--written in Bash. Bash scripters rejoice!


New Patterns
------------

Because lo-dash is a javascript library, the syntax of the functions in this lib will often behave a bit differently. Bash only returns integers, but it can export variables and capture output. Here are some things to keep in mind:

- You will often see in the documentation for a function that one or more variables get exported after execution completes. All exported variables start with an underscore and are snake_case (e.g. `$_im_exported`).
- Most non-mutative array functions in this lib will require at least 2 array names to be passed. One of them is the array on which to operate, the other is a name for the new array that will be created. This means you need to first define an array before passing its name to these functions.
- Using the magic of `eval`, Bash can actually emulate callback functions. The trick is that the implementor will need to define the function ahead of time, and then pass that function name as the callback.
- Functions in `functions/_/` are mainly used internally by the rest of this lib, but implementors may feel free to use them for their purposes as well.


Binary Dependencies
-------------------
- awk
- date
- egrep
- expr
- grep
- sed
- tr
- type
- wc


### Function List

- **_**
  - [lb_arrayCopy](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_arrayCopy.sh)
  - [lb_array](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_array.sh)
  - [lb_awkCompare](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_awkCompare.sh)
  - [lb_awkPrint](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_awkPrint.sh)
  - [lb_math](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_math.sh)
  - [lb_slash](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_slash.sh)
- **array**
  - [_difference](https://github.com/Smolations/lo-bash/blob/master/functions/array/difference.sh)
  - [_forEach](https://github.com/Smolations/lo-bash/blob/master/functions/array/forEach.sh)
  - [_indexOf](https://github.com/Smolations/lo-bash/blob/master/functions/array/indexOf.sh)
  - [_join](https://github.com/Smolations/lo-bash/blob/master/functions/array/join.sh)
  - [_last](https://github.com/Smolations/lo-bash/blob/master/functions/array/last.sh)
  - [_map](https://github.com/Smolations/lo-bash/blob/master/functions/array/map.sh)
  - [_pull](https://github.com/Smolations/lo-bash/blob/master/functions/array/pull.sh)
  - [_remove](https://github.com/Smolations/lo-bash/blob/master/functions/array/remove.sh)
  - [_reverse](https://github.com/Smolations/lo-bash/blob/master/functions/array/reverse.sh)
- **cuz**
  - [_type_exists](https://github.com/Smolations/lo-bash/blob/master/functions/cuz/type_exists.sh)
- **date**
  - [_now](https://github.com/Smolations/lo-bash/blob/master/functions/date/now.sh)
- **lang**
  - [_eq](https://github.com/Smolations/lo-bash/blob/master/functions/lang/eq.sh)
  - [_gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
  - [_gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
  - [_isArray](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
  - [_isEqual](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
  - [_isFunction](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
  - [_isNumber](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
  - [_isStdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
  - [_lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
  - [_lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
- **math**
  - [_add](https://github.com/Smolations/lo-bash/blob/master/functions/math/add.sh)
  - [_max](https://github.com/Smolations/lo-bash/blob/master/functions/math/max.sh)
  - [_min](https://github.com/Smolations/lo-bash/blob/master/functions/math/min.sh)
  - [_sum](https://github.com/Smolations/lo-bash/blob/master/functions/math/sum.sh)
- **number**
  - [_inRange](https://github.com/Smolations/lo-bash/blob/master/functions/number/inRange.sh)
  - [_random](https://github.com/Smolations/lo-bash/blob/master/functions/number/random.sh)
- **string**
  - [_endsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/endsWith.sh)
  - [_length](https://github.com/Smolations/lo-bash/blob/master/functions/string/length.sh)
  - [_padEnd](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
  - [_pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
  - [_padStart](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
  - [_parseInt](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
  - [_repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
  - [_replace](https://github.com/Smolations/lo-bash/blob/master/functions/string/replace.sh)
  - [_split](https://github.com/Smolations/lo-bash/blob/master/functions/string/split.sh)
  - [_startsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
  - [_toLower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
  - [_toUpper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
  - [_trimLeft](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
  - [_trimRight](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
  - [_trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
  - [_truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
- **util**
  - [_get_env](https://github.com/Smolations/lo-bash/blob/master/functions/util/get_env.sh)
  - [_in_args](https://github.com/Smolations/lo-bash/blob/master/functions/util/in_args.sh)
  - [_log](https://github.com/Smolations/lo-bash/blob/master/functions/util/log.sh)
  - [_menu](https://github.com/Smolations/lo-bash/blob/master/functions/util/menu.sh)
  - [_recurse](https://github.com/Smolations/lo-bash/blob/master/functions/util/recurse.sh)
  - [_short_ans](https://github.com/Smolations/lo-bash/blob/master/functions/util/short_ans.sh)
  - [_source_all](https://github.com/Smolations/lo-bash/blob/master/functions/util/source_all.sh)
  - [_strip_styles](https://github.com/Smolations/lo-bash/blob/master/functions/util/strip_styles.sh)
  - [_times](https://github.com/Smolations/lo-bash/blob/master/functions/util/times.sh)
  - [_tree](https://github.com/Smolations/lo-bash/blob/master/functions/util/tree.sh)
  - [_wait_on](https://github.com/Smolations/lo-bash/blob/master/functions/util/wait_on.sh)
  - [_yes_no](https://github.com/Smolations/lo-bash/blob/master/functions/util/yes_no.sh)


### tl;dr Test Output

```

 ---==:  lb_arrayCopy               [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  lb_array                   [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  lb_awkCompare              
 ---==:  lb_math                    [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  lb_slash                   S
 ---==:  _::difference              [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::for_each                [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::index_of                [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::join                    [32m.(B[m[32m.(B[m
 ---==:  _::last                    [32m.(B[m[32m.(B[m
 ---==:  _::map                     [32m.(B[m
 ---==:  _::pull                    [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::remove                  [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::reverse                 [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::now                     [32m.(B[m
 ---==:  _::eq                      [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::gte                     [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::gt                      [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::is_array                [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::is_equal                [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::is_function             [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::is_number               [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::is_stdin                [32m.(B[m[32m.(B[m
 ---==:  _::lte                     [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::lt                      [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::add                     [32m.(B[m[32m.(B[m
 ---==:  _::max                     [32m.(B[m
 ---==:  _::min                     [32m.(B[m
 ---==:  _::sum                     [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::in_range                [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::random                  [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::ends_with               [32m.(B[m[32m.(B[m
 ---==:  _::length                  [32m.(B[m[32m.(B[m
 ---==:  _::pad_end                 [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::pad                     [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::pad_start               [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::parse_int               [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::repeat                  [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::replace                 [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::split                   [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::starts_with             [32m.(B[m[32m.(B[m
 ---==:  _::to_lower                [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::to_upper                [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::trim_left               [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::trim_right              [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::trim                    [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::truncate                [32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::util::in_args           [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::util::strip_styles      [32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m[32m.(B[m
 ---==:  _::util::times             [32m.(B[m[32m.(B[m[32m.(B[m
real	0m0.451s
user	0m0.372s
sys	0m0.098s

```
