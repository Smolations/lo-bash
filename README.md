# lo-bash
A slimmed-down version of the helpful functions in lo-dash (and maybe a few extra)--written in Bash. Bash scripters rejoice!


Quote arguments with whitespace when appropriate
Echo results such that they can be captured in an array or try exporting a variable?

functions can export array variables
capturing output as an array is tricky though..
users should use spaces to pass args, not tabs
should functions that return integers simply return that value? or should the echo paradigm be consistent?



Binary Dependencies
-------------------
awk
egrep
sed
date


### Function List

[functions/_/_array](https://github.com/Smolations/lo-bash/blob/master/functions/_/_array.sh)
[functions/_/_arrayCopy](https://github.com/Smolations/lo-bash/blob/master/functions/_/_arrayCopy.sh)
[functions/_/_awkCompare](https://github.com/Smolations/lo-bash/blob/master/functions/_/_awkCompare.sh)
[functions/_/_awkPrint](https://github.com/Smolations/lo-bash/blob/master/functions/_/_awkPrint.sh)
[functions/_/_math](https://github.com/Smolations/lo-bash/blob/master/functions/_/_math.sh)
[functions/_/_slash](https://github.com/Smolations/lo-bash/blob/master/functions/_/_slash.sh)
[functions/array/compact](https://github.com/Smolations/lo-bash/blob/master/functions/array/compact.sh)
[functions/array/difference](https://github.com/Smolations/lo-bash/blob/master/functions/array/difference.sh)
[functions/cuz/type_exists](https://github.com/Smolations/lo-bash/blob/master/functions/cuz/type_exists.sh)
[functions/date/now](https://github.com/Smolations/lo-bash/blob/master/functions/date/now.sh)
[functions/lang/eq](https://github.com/Smolations/lo-bash/blob/master/functions/lang/eq.sh)
[functions/lang/gt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gt.sh)
[functions/lang/gte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/gte.sh)
[functions/lang/isArray](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isArray.sh)
[functions/lang/isEqual](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isEqual.sh)
[functions/lang/isFunction](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isFunction.sh)
[functions/lang/isNumber](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isNumber.sh)
[functions/lang/isStdin](https://github.com/Smolations/lo-bash/blob/master/functions/lang/isStdin.sh)
[functions/lang/lt](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lt.sh)
[functions/lang/lte](https://github.com/Smolations/lo-bash/blob/master/functions/lang/lte.sh)
[functions/math/add](https://github.com/Smolations/lo-bash/blob/master/functions/math/add.sh)
[functions/math/max](https://github.com/Smolations/lo-bash/blob/master/functions/math/max.sh)
[functions/math/min](https://github.com/Smolations/lo-bash/blob/master/functions/math/min.sh)
[functions/math/sum](https://github.com/Smolations/lo-bash/blob/master/functions/math/sum.sh)
[functions/number/inRange](https://github.com/Smolations/lo-bash/blob/master/functions/number/inRange.sh)
[functions/number/random](https://github.com/Smolations/lo-bash/blob/master/functions/number/random.sh)
[functions/string/endsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/endsWith.sh)
[functions/string/escapeRegExp](https://github.com/Smolations/lo-bash/blob/master/functions/string/escapeRegExp.sh)
[functions/string/length](https://github.com/Smolations/lo-bash/blob/master/functions/string/length.sh)
[functions/string/pad](https://github.com/Smolations/lo-bash/blob/master/functions/string/pad.sh)
[functions/string/padEnd](https://github.com/Smolations/lo-bash/blob/master/functions/string/padEnd.sh)
[functions/string/padStart](https://github.com/Smolations/lo-bash/blob/master/functions/string/padStart.sh)
[functions/string/parseInt](https://github.com/Smolations/lo-bash/blob/master/functions/string/parseInt.sh)
[functions/string/repeat](https://github.com/Smolations/lo-bash/blob/master/functions/string/repeat.sh)
[functions/string/startsWith](https://github.com/Smolations/lo-bash/blob/master/functions/string/startsWith.sh)
[functions/string/toLower](https://github.com/Smolations/lo-bash/blob/master/functions/string/toLower.sh)
[functions/string/toUpper](https://github.com/Smolations/lo-bash/blob/master/functions/string/toUpper.sh)
[functions/string/trim](https://github.com/Smolations/lo-bash/blob/master/functions/string/trim.sh)
[functions/string/trimLeft](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimLeft.sh)
[functions/string/trimRight](https://github.com/Smolations/lo-bash/blob/master/functions/string/trimRight.sh)
[functions/string/truncate](https://github.com/Smolations/lo-bash/blob/master/functions/string/truncate.sh)
[functions/utility/getEnv](https://github.com/Smolations/lo-bash/blob/master/functions/utility/getEnv.sh)
[functions/utility/inArgs](https://github.com/Smolations/lo-bash/blob/master/functions/utility/inArgs.sh)
[functions/utility/log](https://github.com/Smolations/lo-bash/blob/master/functions/utility/log.sh)
[functions/utility/menu](https://github.com/Smolations/lo-bash/blob/master/functions/utility/menu.sh)
[functions/utility/recurse](https://github.com/Smolations/lo-bash/blob/master/functions/utility/recurse.sh)
[functions/utility/shortAns](https://github.com/Smolations/lo-bash/blob/master/functions/utility/shortAns.sh)
[functions/utility/sourceAll](https://github.com/Smolations/lo-bash/blob/master/functions/utility/sourceAll.sh)
[functions/utility/stripStyles](https://github.com/Smolations/lo-bash/blob/master/functions/utility/stripStyles.sh)
[functions/utility/tree](https://github.com/Smolations/lo-bash/blob/master/functions/utility/tree.sh)
[functions/utility/waitOn](https://github.com/Smolations/lo-bash/blob/master/functions/utility/waitOn.sh)
[functions/utility/yesNo](https://github.com/Smolations/lo-bash/blob/master/functions/utility/yesNo.sh)
