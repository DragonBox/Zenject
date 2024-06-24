#!/bin/bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

rvm use '.'

set -e

# run fastlane within our locked Gemfile versioning
product=$1
platform=$2
lane=$3

verbose=""
if [[ -n "$FASTLANE_VERBOSE" ]]; then
    verbose="--verbose"
fi

./be fastlane "$verbose" "$platform" "all_$lane" --env "$product,$lane" || exit -1