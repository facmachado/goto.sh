#!/bin/bash

export PATH="$PATH:$(realpath "$(dirname "${BASH_SOURCE[0]}")")"
export PROG=$(realpath "$0")

goto "${1:-BEGIN}"
exit 255
