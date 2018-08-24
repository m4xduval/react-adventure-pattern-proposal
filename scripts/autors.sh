#!/usr/bin/env sh

# Source: <https://github.com/facebook/react/blob/master/scripts/authors>
# Generate an AUTHORS file based on the output of git shortlog. It uses ABC
# order, strips out leading spaces and numbers, then filters out specific
# authors.

git shortlog -se \
  | perl -spe 's/^\s+\d+\s+//' \
  | sed -e '/^CommitSyncScript.*$/d' \
  > AUTHORS