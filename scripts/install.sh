#!/usr/bin/env bash

set -e

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    type curl >/dev/null 2>&1 || {
        apt-get -y install curl
    }
    sh -c "`curl https://babushka.me/up`"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    type babushka >/dev/null 2>&1 || {
        sh -c "`curl https://babushka.me/up`"
    }
    type brew >/dev/null 2>&1 || {
        ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
    }
    git clone git@github.com:bowlofstew/babushka.git ~/.babushka/deps
fi