#!/bin/bash

h1 '_::is_function'


function whatwhat() {
  :
}

whowho=(1 2 3)
whywhy='1 2 3'

_::is_function whatwhat && pass || fail

_::is_function whowho && fail || pass
_::is_function whywhy && fail || pass
