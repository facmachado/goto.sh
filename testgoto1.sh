#!/bin/bash

# shellcheck disable=SC1091
readonly src_dir=$(dirname "${BASH_SOURCE[0]}")
source "$src_dir/goto.sh"

: BEGIN
goto a3

: a0
echo a0
# goto END
goto a3

: a1
echo a1
goto a0

: a2
echo a2
goto a1

: a3
echo a3
goto a2

: END
