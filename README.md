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
  - [`lb_arrayCopy`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_arrayCopy.sh)
  - [`lb_array`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_array.sh)
  - [`lb_awkCompare`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_awkCompare.sh)
  - [`lb_awkPrint`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_awkPrint.sh)
  - [`lb_math`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_math.sh)
  - [`lb_slash`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/_/lb_slash.sh)
- **array**
  - [`_::array::difference`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/difference.sh)
  - [`_::array::for_each`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/for_each.sh)
  - [`_::array::index_of`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/index_of.sh)
  - [`_::array::join`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/join.sh)
  - [`_::array::last`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/last.sh)
  - [`_::array::map`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/map.sh)
  - [`_::array::pull`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/pull.sh)
  - [`_::array::remove`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/remove.sh)
  - [`_::array::reverse`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/array/reverse.sh)
- **cuz**
  - [`_::cuz::type_exists`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/cuz/type_exists.sh)
- **date**
  - [`_::date::now`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/date/now.sh)
- **lang**
  - [`_::lang::eq`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/eq.sh)
  - [`_::lang::gte`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/gte.sh)
  - [`_::lang::gt`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/gt.sh)
  - [`_::lang::is_array`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/is_array.sh)
  - [`_::lang::is_equal`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/is_equal.sh)
  - [`_::lang::is_function`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/is_function.sh)
  - [`_::lang::is_number`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/is_number.sh)
  - [`_::lang::is_stdin`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/is_stdin.sh)
  - [`_::lang::lte`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/lte.sh)
  - [`_::lang::lt`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/lang/lt.sh)
- **math**
  - [`_::math::add`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/math/add.sh)
  - [`_::math::max`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/math/max.sh)
  - [`_::math::min`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/math/min.sh)
  - [`_::math::sum`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/math/sum.sh)
- **number**
  - [`_::number::in_range`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/number/in_range.sh)
  - [`_::number::random`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/number/random.sh)
- **string**
  - [`_::string::ends_with`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/ends_with.sh)
  - [`_::string::length`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/length.sh)
  - [`_::string::pad_end`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/pad_end.sh)
  - [`_::string::pad`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/pad.sh)
  - [`_::string::pad_start`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/pad_start.sh)
  - [`_::string::parse_int`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/parse_int.sh)
  - [`_::string::repeat`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/repeat.sh)
  - [`_::string::replace`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/replace.sh)
  - [`_::string::split`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/split.sh)
  - [`_::string::starts_with`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/starts_with.sh)
  - [`_::string::to_lower`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/to_lower.sh)
  - [`_::string::to_upper`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/to_upper.sh)
  - [`_::string::trim_left`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/trim_left.sh)
  - [`_::string::trim_right`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/trim_right.sh)
  - [`_::string::trim`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/trim.sh)
  - [`_::string::truncate`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/string/truncate.sh)
- **util**
  - [`_::util::get_env`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/get_env.sh)
  - [`_::util::in_args`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/in_args.sh)
  - [`_::util::log`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/log.sh)
  - [`_::util::menu`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/menu.sh)
  - [`_::util::recurse`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/recurse.sh)
  - [`_::util::short_ans`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/short_ans.sh)
  - [`_::util::source_all`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/source_all.sh)
  - [`_::util::strip_styles`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/strip_styles.sh)
  - [`_::util::times`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/times.sh)
  - [`_::util::tree`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/tree.sh)
  - [`_::util::wait_on`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/wait_on.sh)
  - [`_::util::yes_no`](https://github.com/Smolations/lo-bash/blob/more_arch_decisions/functions/util/yes_no.sh)


### tl;dr Test Output

```

 ---==:  lb_arrayCopy               ......
 ---==:  lb_array                   ....
 ---==:  lb_awkCompare              
 ---==:  lb_math                    ......
 ---==:  lb_slash                   S
 ---==:  _::array::difference       ..................
 ---==:  _::array::for_each         ...
 ---==:  _::array::index_of         ....
 ---==:  _::array::join             ..
 ---==:  _::array::last             ..
 ---==:  _::array::map              .
 ---==:  _::array::pull             ...
 ---==:  _::array::remove           ...
 ---==:  _::array::reverse          .....
 ---==:  _::date::now               .
 ---==:  _::lang::eq                .....
 ---==:  _::lang::gte               ...........
 ---==:  _::lang::gt                ........
 ---==:  _::lang::is_array          ....
 ---==:  _::lang::is_equal          .....
 ---==:  _::lang::is_function       ...
 ---==:  _::lang::is_number         ..........
 ---==:  _::lang::is_stdin          ..
 ---==:  _::lang::lte               ...........
 ---==:  _::lang::lt                ........
 ---==:  _::math::add               ..
 ---==:  _::math::max               .
 ---==:  _::math::min               .
 ---==:  _::math::sum               ...
 ---==:  _::number::in_range        ....
 ---==:  _::number::random          .....
 ---==:  _::string::ends_with       ..
 ---==:  _::string::length          ..
 ---==:  _::string::pad_end         ...
 ---==:  _::string::pad             ....
 ---==:  _::string::pad_start       ...
 ---==:  _::string::parse_int       ......
 ---==:  _::string::repeat          ...
 ---==:  _::string::replace         .....
 ---==:  _::string::split           ............
 ---==:  _::string::starts_with     ..
 ---==:  _::string::to_lower        ...
 ---==:  _::string::to_upper        ...
 ---==:  _::string::trim_left       ...
 ---==:  _::string::trim_right      ...
 ---==:  _::string::trim            ....
 ---==:  _::string::truncate        ...
 ---==:  _::util::in_args           ..................
 ---==:  _::util::strip_styles      .........
 ---==:  _::util::times             ...
real	0m0.500s
user	0m0.377s
sys	0m0.113s

```
