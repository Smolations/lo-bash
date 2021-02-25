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
  - [lo::difference](https://github.com/Smolations/lo-bash/blob/master/functions/array/difference.sh)
  - [lo::forEach](https://github.com/Smolations/lo-bash/blob/master/functions/array/forEach.sh)
  - [lo::indexOf](https://github.com/Smolations/lo-bash/blob/master/functions/array/indexOf.sh)
  - [lo::join](https://github.com/Smolations/lo-bash/blob/master/functions/array/join.sh)
  - [lo::last](https://github.com/Smolations/lo-bash/blob/master/functions/array/last.sh)
  - [lo::map](https://github.com/Smolations/lo-bash/blob/master/functions/array/map.sh)
  - [lo::pull](https://github.com/Smolations/lo-bash/blob/master/functions/array/pull.sh)
  - [lo::remove](https://github.com/Smolations/lo-bash/blob/master/functions/array/remove.sh)
  - [lo::reverse](https://github.com/Smolations/lo-bash/blob/master/functions/array/reverse.sh)
- **cuz**
  - [lo::type_exists](https://github.com/Smolations/lo-bash/blob/master/functions/cuz/type_exists.sh)
- **date**
  - [lo::now](https://github.com/Smolations/lo-bash/blob/master/functions/date/now.sh)
- **lang**
  - [lo::eq](https://github.com/Smolations/lo-bash/blob/master/functions/lang/eq.sh)
  - [lo::gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
  - [lo::gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
  - [lo::isArray](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
  - [lo::isEqual](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
  - [lo::isFunction](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
  - [lo::isNumber](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
  - [lo::isStdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
  - [lo::lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
  - [lo::lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
- **math**
  - [lo::add](https://github.com/Smolations/lo-bash/blob/master/functions/math/add.sh)
  - [lo::max](https://github.com/Smolations/lo-bash/blob/master/functions/math/max.sh)
  - [lo::min](https://github.com/Smolations/lo-bash/blob/master/functions/math/min.sh)
  - [lo::sum](https://github.com/Smolations/lo-bash/blob/master/functions/math/sum.sh)
- **number**
  - [lo::inRange](https://github.com/Smolations/lo-bash/blob/master/functions/number/inRange.sh)
  - [lo::random](https://github.com/Smolations/lo-bash/blob/master/functions/number/random.sh)
- **string**
  - [lo::endsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/endsWith.sh)
  - [lo::length](https://github.com/Smolations/lo-bash/blob/master/functions/string/length.sh)
  - [lo::pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
  - [lo::padEnd](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
  - [lo::padStart](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
  - [lo::parseInt](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
  - [lo::repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
  - [lo::replace](https://github.com/Smolations/lo-bash/blob/master/functions/string/replace.sh)
  - [lo::split](https://github.com/Smolations/lo-bash/blob/master/functions/string/split.sh)
  - [lo::startsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
  - [lo::toLower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
  - [lo::toUpper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
  - [lo::trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
  - [lo::trimLeft](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
  - [lo::trimRight](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
  - [lo::truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
- **utility**
  - [lo::getEnv](https://github.com/Smolations/lo-bash/blob/master/functions/utility/getEnv.sh)
  - [lo::inArgs](https://github.com/Smolations/lo-bash/blob/master/functions/utility/inArgs.sh)
  - [lo::log](https://github.com/Smolations/lo-bash/blob/master/functions/utility/log.sh)
  - [lo::menu](https://github.com/Smolations/lo-bash/blob/master/functions/utility/menu.sh)
  - [lo::recurse](https://github.com/Smolations/lo-bash/blob/master/functions/utility/recurse.sh)
  - [lo::shortAns](https://github.com/Smolations/lo-bash/blob/master/functions/utility/shortAns.sh)
  - [lo::sourceAll](https://github.com/Smolations/lo-bash/blob/master/functions/utility/sourceAll.sh)
  - [lo::stripStyles](https://github.com/Smolations/lo-bash/blob/master/functions/utility/stripStyles.sh)
  - [lo::times](https://github.com/Smolations/lo-bash/blob/master/functions/utility/times.sh)
  - [lo::tree](https://github.com/Smolations/lo-bash/blob/master/functions/utility/tree.sh)
  - [lo::waitOn](https://github.com/Smolations/lo-bash/blob/master/functions/utility/waitOn.sh)
  - [lo::yesNo](https://github.com/Smolations/lo-bash/blob/master/functions/utility/yesNo.sh)


### tl;dr Test Output

```

 ---==:  lb_array         ....
 ---==:  lb_arrayCopy     ......
 ---==:  lb_awkCompare    
 ---==:  lb_math          ......
 ---==:  lb_slash         S
 ---==:  lo::difference      ..................
 ---==:  lo::forEach         ...
 ---==:  lo::indexOf         ....
 ---==:  lo::join            ..
 ---==:  lo::last            ..
 ---==:  lo::map             .
 ---==:  lo::pull            ...
 ---==:  lo::remove          ...
 ---==:  lo::reverse         .....
 ---==:  lo::now             .
 ---==:  lo::eq              .....
 ---==:  lo::gt              ........
 ---==:  lo::gte             ...........
 ---==:  lo::isArray         ....
 ---==:  lo::isEqual         .....
 ---==:  lo::isFunction      ...
 ---==:  lo::isNumber        ..........
 ---==:  lo::isStdin         ..
 ---==:  lo::lt              ........
 ---==:  lo::lte             ...........
 ---==:  lo::add             ..
 ---==:  lo::max             .
 ---==:  lo::min             .
 ---==:  lo::sum             ...
 ---==:  lo::inRange         ....
 ---==:  lo::random          .....
 ---==:  lo::endsWith        ..
 ---==:  lo::length          ..
 ---==:  lo::pad             ....
 ---==:  lo::padEnd          ...
 ---==:  lo::padStart        ...
 ---==:  lo::parseInt        ......
 ---==:  lo::repeat          ...
 ---==:  lo::replace         .....
 ---==:  lo::split           ............
 ---==:  lo::startsWith      ..
 ---==:  lo::toLower         ...
 ---==:  lo::toUpper         ...
 ---==:  lo::trim            ....
 ---==:  lo::trimLeft        ...
 ---==:  lo::trimRight       ...
 ---==:  lo::truncate        ...
 ---==:  lo::inArgs          ..................
 ---==:  lo::stripStyles     ..........
 ---==:  lo::times           ...
real	0m2.044s
user	0m0.994s
sys	0m1.058s

```
