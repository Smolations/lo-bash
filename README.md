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
  - [lb_array](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_array.sh)
  - [lb_arrayCopy](https://github.com/Smolations/lo-bash/blob/master/functions/_/lb_arrayCopy.sh)
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
  - [_gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
  - [_gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
  - [_isArray](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
  - [_isEqual](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
  - [_isFunction](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
  - [_isNumber](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
  - [_isStdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
  - [_lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
  - [_lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
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
  - [_pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
  - [_padEnd](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
  - [_padStart](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
  - [_parseInt](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
  - [_repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
  - [_replace](https://github.com/Smolations/lo-bash/blob/master/functions/string/replace.sh)
  - [_split](https://github.com/Smolations/lo-bash/blob/master/functions/string/split.sh)
  - [_startsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
  - [_toLower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
  - [_toUpper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
  - [_trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
  - [_trimLeft](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
  - [_trimRight](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
  - [_truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
- **utility**
  - [_getEnv](https://github.com/Smolations/lo-bash/blob/master/functions/utility/getEnv.sh)
  - [_inArgs](https://github.com/Smolations/lo-bash/blob/master/functions/utility/inArgs.sh)
  - [_log](https://github.com/Smolations/lo-bash/blob/master/functions/utility/log.sh)
  - [_menu](https://github.com/Smolations/lo-bash/blob/master/functions/utility/menu.sh)
  - [_recurse](https://github.com/Smolations/lo-bash/blob/master/functions/utility/recurse.sh)
  - [_shortAns](https://github.com/Smolations/lo-bash/blob/master/functions/utility/shortAns.sh)
  - [_sourceAll](https://github.com/Smolations/lo-bash/blob/master/functions/utility/sourceAll.sh)
  - [_stripStyles](https://github.com/Smolations/lo-bash/blob/master/functions/utility/stripStyles.sh)
  - [_times](https://github.com/Smolations/lo-bash/blob/master/functions/utility/times.sh)
  - [_tree](https://github.com/Smolations/lo-bash/blob/master/functions/utility/tree.sh)
  - [_waitOn](https://github.com/Smolations/lo-bash/blob/master/functions/utility/waitOn.sh)
  - [_yesNo](https://github.com/Smolations/lo-bash/blob/master/functions/utility/yesNo.sh)


### tl;dr Test Output

```

 ---==:  lb_array         ....
 ---==:  lb_arrayCopy     ......
 ---==:  lb_awkCompare    
 ---==:  lb_math          ......
 ---==:  lb_slash         S
 ---==:  _difference      ..................
 ---==:  _forEach         ...
 ---==:  _indexOf         ....
 ---==:  _join            ..
 ---==:  _last            ..
 ---==:  _map             .
 ---==:  _pull            ...
 ---==:  _remove          ...
 ---==:  _reverse         .....
 ---==:  _now             .
 ---==:  _eq              .....
 ---==:  _gt              ........
 ---==:  _gte             ...........
 ---==:  _isArray         ....
 ---==:  _isEqual         .....
 ---==:  _isFunction      ...
 ---==:  _isNumber        ..........
 ---==:  _isStdin         ..
 ---==:  _lt              ........
 ---==:  _lte             ...........
 ---==:  _add             ..
 ---==:  _max             .
 ---==:  _min             .
 ---==:  _sum             ...
 ---==:  _inRange         ....
 ---==:  _random          .....
 ---==:  _endsWith        ..
 ---==:  _length          ..
 ---==:  _pad             ....
 ---==:  _padEnd          ...
 ---==:  _padStart        ...
 ---==:  _parseInt        ......
 ---==:  _repeat          ...
 ---==:  _replace         .....
 ---==:  _split           ............
 ---==:  _startsWith      ..
 ---==:  _toLower         ...
 ---==:  _toUpper         ...
 ---==:  _trim            ....
 ---==:  _trimLeft        ...
 ---==:  _trimRight       ...
 ---==:  _truncate        ...
 ---==:  _inArgs          ..................
 ---==:  _stripStyles     ..........
 ---==:  _times           ...
real	0m2.044s
user	0m0.994s
sys	0m1.058s

```
