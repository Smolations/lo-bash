## /* @function
 #  @usage _._awkPrint <*>
 #
 #  @output true
 #
 #  @description
 #  Directly passes arguments into awk's `print` function, which supports a variety
 #  of expressions. In this lib, using it for math operations is ideal as it will
 #  return floating point numbers.
 #  description@
 #
 #  @examples
 #  $ _._awkPrint "2 + 4"
 #  > 6
 #  examples@
 #
 #  @dependencies
 #  `awk`
 #  dependencies@
 #
 #  @returns
 #  0 - successful execution
 #  * - any possible awk failure (probably syntax-related)
 #  returns@
 #
 #  @file functions/_/_awkPrint.sh
 ## */

function _._awkPrint {
  awk "BEGIN { print(${@}) }"
}

