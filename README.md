# lo-bash
A slimmed-down version of the helpful functions in lo-dash (and maybe a few extra)--written in Bash. Bash scripters rejoice!


New Patterns
------------

Because lo-dash is a javascript library, the syntax of the functions in this lib will often behave a bit differently. Bash only returns integers, but it can export variables and capture output. Here are some things to keep in mind:

- You will often see in the documentation for a function that one or more variables get exported after execution completes. All exported variables start with an underscore and are snake_case.
- Most non-mutative array functions in this lib will require at least 2 array names to be passed. One of them is the array on which to operate, the other is a name for the new array that will be created.
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
  - [_array](https://github.com/Smolations/lo-bash/blob/master/functions/_/_array.sh)
  - [_arrayCopy](https://github.com/Smolations/lo-bash/blob/master/functions/_/_arrayCopy.sh)
  - [_awkCompare](https://github.com/Smolations/lo-bash/blob/master/functions/_/_awkCompare.sh)
  - [_awkPrint](https://github.com/Smolations/lo-bash/blob/master/functions/_/_awkPrint.sh)
  - [_math](https://github.com/Smolations/lo-bash/blob/master/functions/_/_math.sh)
  - [_slash](https://github.com/Smolations/lo-bash/blob/master/functions/_/_slash.sh)
- **array**
  - [difference](https://github.com/Smolations/lo-bash/blob/master/functions/array/difference.sh)
  - [forEach](https://github.com/Smolations/lo-bash/blob/master/functions/array/forEach.sh)
  - [indexOf](https://github.com/Smolations/lo-bash/blob/master/functions/array/indexOf.sh)
  - [join](https://github.com/Smolations/lo-bash/blob/master/functions/array/join.sh)
  - [last](https://github.com/Smolations/lo-bash/blob/master/functions/array/last.sh)
  - [map](https://github.com/Smolations/lo-bash/blob/master/functions/array/map.sh)
  - [pull](https://github.com/Smolations/lo-bash/blob/master/functions/array/pull.sh)
  - [remove](https://github.com/Smolations/lo-bash/blob/master/functions/array/remove.sh)
  - [reverse](https://github.com/Smolations/lo-bash/blob/master/functions/array/reverse.sh)
- **cuz**
  - [type_exists](https://github.com/Smolations/lo-bash/blob/master/functions/cuz/type_exists.sh)
- **date**
  - [now](https://github.com/Smolations/lo-bash/blob/master/functions/date/now.sh)
- **lang**
  - [eq](https://github.com/Smolations/lo-bash/blob/master/functions/lang/eq.sh)
  - [gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
  - [gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
  - [isArray](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
  - [isEqual](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
  - [isFunction](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
  - [isNumber](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
  - [isStdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
  - [lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
  - [lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
- **math**
  - [add](https://github.com/Smolations/lo-bash/blob/master/functions/math/add.sh)
  - [max](https://github.com/Smolations/lo-bash/blob/master/functions/math/max.sh)
  - [min](https://github.com/Smolations/lo-bash/blob/master/functions/math/min.sh)
  - [sum](https://github.com/Smolations/lo-bash/blob/master/functions/math/sum.sh)
- **number**
  - [inRange](https://github.com/Smolations/lo-bash/blob/master/functions/number/inRange.sh)
  - [random](https://github.com/Smolations/lo-bash/blob/master/functions/number/random.sh)
- **string**
  - [endsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/endsWith.sh)
  - [length](https://github.com/Smolations/lo-bash/blob/master/functions/string/length.sh)
  - [pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
  - [padEnd](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
  - [padStart](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
  - [parseInt](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
  - [repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
  - [replace](https://github.com/Smolations/lo-bash/blob/master/functions/string/replace.sh)
  - [split](https://github.com/Smolations/lo-bash/blob/master/functions/string/split.sh)
  - [startsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
  - [toLower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
  - [toUpper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
  - [trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
  - [trimLeft](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
  - [trimRight](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
  - [truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
- **utility**
  - [getEnv](https://github.com/Smolations/lo-bash/blob/master/functions/utility/getEnv.sh)
  - [inArgs](https://github.com/Smolations/lo-bash/blob/master/functions/utility/inArgs.sh)
  - [log](https://github.com/Smolations/lo-bash/blob/master/functions/utility/log.sh)
  - [menu](https://github.com/Smolations/lo-bash/blob/master/functions/utility/menu.sh)
  - [recurse](https://github.com/Smolations/lo-bash/blob/master/functions/utility/recurse.sh)
  - [shortAns](https://github.com/Smolations/lo-bash/blob/master/functions/utility/shortAns.sh)
  - [sourceAll](https://github.com/Smolations/lo-bash/blob/master/functions/utility/sourceAll.sh)
  - [stripStyles](https://github.com/Smolations/lo-bash/blob/master/functions/utility/stripStyles.sh)
  - [times](https://github.com/Smolations/lo-bash/blob/master/functions/utility/times.sh)
  - [tree](https://github.com/Smolations/lo-bash/blob/master/functions/utility/tree.sh)
  - [waitOn](https://github.com/Smolations/lo-bash/blob/master/functions/utility/waitOn.sh)
  - [yesNo](https://github.com/Smolations/lo-bash/blob/master/functions/utility/yesNo.sh)


### tl;dr Test Output

```

 ---==:  _._array           ....
 ---==:  _._arrayCopy       ......
 ---==:  _._awkCompare      
 ---==:  _._math            ......
 ---==:  _._slash           S
 ---==:  _.difference       ..................
 ---==:  _.forEach          ...
 ---==:  _.indexOf          ....
 ---==:  _.join             ..
 ---==:  _.last             ..
 ---==:  _.map              .
 ---==:  _.pull             ...
 ---==:  _.remove           ...
 ---==:  _.reverse          .....
 ---==:  _.now              .
 ---==:  _.eq               .....
 ---==:  _.gt               ........
 ---==:  _.gte              ...........
 ---==:  _.isArray          ....
 ---==:  _.isEqual          .....
 ---==:  _.isFunction       ...
 ---==:  _.isNumber         ..........
 ---==:  _.isStdin          ..
 ---==:  _.lt               ........
 ---==:  _.lte              ...........
 ---==:  _.add              ..
 ---==:  _.max              .
 ---==:  _.min              .
 ---==:  _.sum              ...
 ---==:  _.inRange          ....
 ---==:  _.random           .....
 ---==:  _.endsWith         ..
 ---==:  _.length           ..
 ---==:  _.pad              ....
 ---==:  _.padEnd           ...
 ---==:  _.padStart         ...
 ---==:  _.parseInt         ......
 ---==:  _.repeat           ...
 ---==:  _.replace          .....
 ---==:  _.split            ............
 ---==:  _.startsWith       ..
 ---==:  _.toLower          ...
 ---==:  _.toUpper          ...
 ---==:  _.trim             ....
 ---==:  _.trimLeft         ...
 ---==:  _.trimRight        ...
 ---==:  _.truncate         ...
 ---==:  _.inArgs           ..................
 ---==:  _.times            ...
real	0m3.093s
user	0m1.561s
sys	0m0.935s

```
