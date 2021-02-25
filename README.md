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
  - [_::difference](https://github.com/Smolations/lo-bash/blob/master/functions/array/difference.sh)
  - [_::for_each](https://github.com/Smolations/lo-bash/blob/master/functions/array/forEach.sh)
  - [_::index_of](https://github.com/Smolations/lo-bash/blob/master/functions/array/indexOf.sh)
  - [_::join](https://github.com/Smolations/lo-bash/blob/master/functions/array/join.sh)
  - [_::last](https://github.com/Smolations/lo-bash/blob/master/functions/array/last.sh)
  - [_::map](https://github.com/Smolations/lo-bash/blob/master/functions/array/map.sh)
  - [_::pull](https://github.com/Smolations/lo-bash/blob/master/functions/array/pull.sh)
  - [_::remove](https://github.com/Smolations/lo-bash/blob/master/functions/array/remove.sh)
  - [_::reverse](https://github.com/Smolations/lo-bash/blob/master/functions/array/reverse.sh)
- **cuz**
  - [_::type_exists](https://github.com/Smolations/lo-bash/blob/master/functions/cuz/type_exists.sh)
- **date**
  - [_::now](https://github.com/Smolations/lo-bash/blob/master/functions/date/now.sh)
- **lang**
  - [_::eq](https://github.com/Smolations/lo-bash/blob/master/functions/lang/eq.sh)
  - [_::gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
  - [_::gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
  - [_::is_array](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
  - [_::is_equal](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
  - [_::is_function](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
  - [_::is_number](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
  - [_::is_stdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
  - [_::lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
  - [_::lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
- **math**
  - [_::add](https://github.com/Smolations/lo-bash/blob/master/functions/math/add.sh)
  - [_::max](https://github.com/Smolations/lo-bash/blob/master/functions/math/max.sh)
  - [_::min](https://github.com/Smolations/lo-bash/blob/master/functions/math/min.sh)
  - [_::sum](https://github.com/Smolations/lo-bash/blob/master/functions/math/sum.sh)
- **number**
  - [_::in_range](https://github.com/Smolations/lo-bash/blob/master/functions/number/inRange.sh)
  - [_::random](https://github.com/Smolations/lo-bash/blob/master/functions/number/random.sh)
- **string**
  - [_::ends_with](https://github.com/Smolations/lo-bash/blob/master/functions/string/endsWith.sh)
  - [_::length](https://github.com/Smolations/lo-bash/blob/master/functions/string/length.sh)
  - [_::pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
  - [_::pad_end](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
  - [_::pad_start](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
  - [_::parse_int](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
  - [_::repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
  - [_::replace](https://github.com/Smolations/lo-bash/blob/master/functions/string/replace.sh)
  - [_::split](https://github.com/Smolations/lo-bash/blob/master/functions/string/split.sh)
  - [_::starts_with](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
  - [_::to_lower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
  - [_::to_upper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
  - [_::trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
  - [_::trim_left](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
  - [_::trim_right](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
  - [_::truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
- **utility**
  - [_::get_env](https://github.com/Smolations/lo-bash/blob/master/functions/utility/getEnv.sh)
  - [_::in_args](https://github.com/Smolations/lo-bash/blob/master/functions/utility/inArgs.sh)
  - [_::log](https://github.com/Smolations/lo-bash/blob/master/functions/utility/log.sh)
  - [_::menu](https://github.com/Smolations/lo-bash/blob/master/functions/utility/menu.sh)
  - [_::recurse](https://github.com/Smolations/lo-bash/blob/master/functions/utility/recurse.sh)
  - [_::short_ans](https://github.com/Smolations/lo-bash/blob/master/functions/utility/shortAns.sh)
  - [_::source_all](https://github.com/Smolations/lo-bash/blob/master/functions/utility/sourceAll.sh)
  - [_::strip_styles](https://github.com/Smolations/lo-bash/blob/master/functions/utility/stripStyles.sh)
  - [_::times](https://github.com/Smolations/lo-bash/blob/master/functions/utility/times.sh)
  - [_::tree](https://github.com/Smolations/lo-bash/blob/master/functions/utility/tree.sh)
  - [_::wait_on](https://github.com/Smolations/lo-bash/blob/master/functions/utility/waitOn.sh)
  - [_::yes_no](https://github.com/Smolations/lo-bash/blob/master/functions/utility/yesNo.sh)


### tl;dr Test Output

```

 ---==:  lb_array         ....
 ---==:  lb_arrayCopy     ......
 ---==:  lb_awkCompare
 ---==:  lb_math          ......
 ---==:  lb_slash         S
 ---==:  _::difference      ..................
 ---==:  _::for_each         ...
 ---==:  _::index_of         ....
 ---==:  _::join            ..
 ---==:  _::last            ..
 ---==:  _::map             .
 ---==:  _::pull            ...
 ---==:  _::remove          ...
 ---==:  _::reverse         .....
 ---==:  _::now             .
 ---==:  _::eq              .....
 ---==:  _::gt              ........
 ---==:  _::gte             ...........
 ---==:  _::is_array         ....
 ---==:  _::is_equal         .....
 ---==:  _::is_function      ...
 ---==:  _::is_number        ..........
 ---==:  _::is_stdin         ..
 ---==:  _::lt              ........
 ---==:  _::lte             ...........
 ---==:  _::add             ..
 ---==:  _::max             .
 ---==:  _::min             .
 ---==:  _::sum             ...
 ---==:  _::in_range         ....
 ---==:  _::random          .....
 ---==:  _::ends_with        ..
 ---==:  _::length          ..
 ---==:  _::pad             ....
 ---==:  _::pad_end          ...
 ---==:  _::pad_start        ...
 ---==:  _::parse_int        ......
 ---==:  _::repeat          ...
 ---==:  _::replace         .....
 ---==:  _::split           ............
 ---==:  _::starts_with      ..
 ---==:  _::to_lower         ...
 ---==:  _::to_upper         ...
 ---==:  _::trim            ....
 ---==:  _::trim_left        ...
 ---==:  _::trim_right       ...
 ---==:  _::truncate        ...
 ---==:  _::in_args          ..................
 ---==:  _::strip_styles     ..........
 ---==:  _::times           ...
real	0m2.044s
user	0m0.994s
sys	0m1.058s

```
