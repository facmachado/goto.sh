#!/bin/bash

# shellcheck disable=SC1091
readonly src_dir=$(dirname "${BASH_SOURCE[0]}")
source "$src_dir/goto.sh"

: BEGIN

: a0
printf .
goto a0

: END
