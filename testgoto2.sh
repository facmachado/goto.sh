#!/bin/bash

# shellcheck disable=SC1091
readonly src_dir=$(dirname "${BASH_SOURCE[0]}")
source "$src_dir/goto.sh"

: BEGIN
declare -i a=1
export a
goto a4

: a0
echo a0
goto END

: a1
echo a1
goto END

: a2
echo a2
if (((a % 2) == 1)); then
  goto a1
else
  goto a0
fi

: a3
echo a3
((a+=(RANDOM % 2)))
goto a2

: a4
echo a4
((a++))
goto a3

: END
echo "a=$a"
