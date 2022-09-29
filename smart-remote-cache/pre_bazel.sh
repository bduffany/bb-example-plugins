#!/usr/bin/env bash

for arg in "$@"; do
  echo "$arg"
done

if ! timeout 1 ping -c1 remote.buildbuddy.io; then
    # Network is spotty; don't use cache
    echo "--remote_cache="
fi

