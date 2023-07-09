## /* @function
 #  @usage _typeExists [-p | -a | -b | -f | -k] <command>
 #  @usage _typeExists [-p | -a | -b | -f | -k] <app_name>
 #
 #  @output on error
 #
 #  @exports
 #  $_type_is
 #  exports@
 #
 #  @description
 #  This function is basically a wrapper around the `type` command. Its purpose
 #  is to tell the user if a particular app/file/function/etc. exists on their
 #  system. Without passing an option, `_typeExists` will use the return
 #  code of the `type` command for the given input. Passing one of the options
 #  (and they can *only* be passed one at a time), will result in success only
 #  if the `type` of the input matches the type specified by the given option.
 #  See @examples for clarification.
 #
 #  In addition to pass/fail return codes, this function also exports a variable
 #  in case the script author needs it for some reason. See @exports.
 #
 #  `type -t` returns a single word if the <command> is found. `_typeExists`
 #  adds another word, "app", to the mix specifically for OS X *.app's. The
 #  exported variable will be populated with one of these words if a type is
 #  found:
 #      "alias"    (shell alias)
 #      "app"      (<app_name>.app lives in system/user Applications folder)
 #      "builtin"  (shell builtin)
 #      "file"     (disk file; includes binaries!)
 #      "function" (shell function)
 #      "keyword"  (shell reserved word)
 #  description@
 #
 #  @options
 #  -p      Return success only if input type is "app".
 #  -a      Return success only if input type is "alias".
 #  -b      Return success only if input type is "builtin". (e.g. type, echo)
 #  -f      Return success only if input type is "function".
 #  -k      Return success only if input type is "keyword". (e.g. if, break)
 #  options@
 #
 #  @notes
 #  - Case Sensitive!
 #  - There is no option for the "file" type because `type` will return "file"
 #  if the target is flat (ASCII) OR binary.
 #  - The exported variable will be populated even in the case when an option is
 #  unrecognized. This may be a point of confusion for some authors, so script
 #  authors should always strive to attain a success return code in order to
 #  use this function effectively.
 #  notes@
 #
 #  @examples
 #  _typeExists echo                      => 0   $_type_is = "builtin"
 #  _typeExists -f echo                   => 4   $_type_is = "builtin"
 #  _typeExists fi                        => 0   $_type_is = "keyword"
 #  _typeExists -app git                  => 2   $_type_is = "file"
 #  _typeExists "Mission Control"         => 0   $_type_is = "app"
 #  _typeExists Mission Control           => 4   $_type_is = ""
 #  _typeExists -p Mission Control        => 0   $_type_is = "app"
 #  _typeExists _typeExists              => 0   $_type_is = "function"
 #  examples@
 #
 #  @returns
 #  0 - successful execution
 #  1 - no arguments were passed to function
 #  2 - an invalid option was passed
 #  4 - type returned failure OR does not match type for given option
 #  returns@
 #
 #  @file functions/cuz/type_exists.sh
 ## */

function _typeExists {
    [[ $# == 0 ]] && return 1

    local retVal=0 targ results opt=
    _type_is=

    if [[ $# > 1 ]]; then
      opt="$1"
      shift
    fi

    targ="$@"

    # odds are we will have to find the type, so we'll try it first
    _type_is=$( type -t "$targ" 2>/dev/null ) || retVal=4
    if [[ -z "$_type_is" ]]; then
      # an app will always fail a `type` check (since its a directory) so
      # $retVal needs to be reset
      retVal=0
      # look for system AND user app
      results=$(find /Applications ~/Applications -maxdepth 4 -name "${targ}.app")
      [[ -n "$results" ]] && _type_is=app || retVal=4
    fi

    # check to see if user specified an option to indicate desired type
    if [[ -n "$opt" ]] && [[ $retVal == 0 ]]; then
      case "$opt" in
        -p)
          [[ "$_type_is" == "app" ]] || retVal=4;;

        -a)
          [[ "$_type_is" == "alias" ]] || retVal=4;;

        -b)
          [[ "$_type_is" == "builtin" ]] || retVal=4;;

        -f)
          [[ "$_type_is" == "function" ]] || retVal=4;;

        -k)
          [[ "$_type_is" == "keyword" ]] || retVal=4;;

        *)
          echo "${E}  Incorrect option [${1}] specified for \`_typeExists\`.  ${X}"
          retVal=2
      esac
    fi

    export _type_is

    return $retVal
}