#!/bin/bash

directory=$1

cd $directory

for dir in *; do
  if [ -d ${dir} ]; then
    git push -f --all origin
    upstream=$(git config --get remote.upstream.url)
    fork=$(git config --get remote.origin.url)
    if [ -z $upstream ]; then
      upstream=$fork
    fi
    upstream_user=$(echo $upstream | sed -e 's/.*[\/:]\([^/]*\)\/[^/]*$/\1/')
    fork_user=$(echo $fork | sed -e 's/.*[\/:]\([^/]*\)\/[^/]*$/\1/')
    repo_name=$(basename `git rev-parse --show-toplevel`)
    from_branch=$(git rev-parse --abbrev-ref HEAD)
    open "https://github.com/$upstream_user/$repo_name/pull/new/$upstream_user:$to_branch...$fork_user:$from_branch"
  fi
done
