#!/usr/bin/env bash -ex

cd $(dirname $0)

pushd tdd
    npx showdown \
	    makehtml \
	    -i tdd.md \
	    -o content.mustache

    jq -n \
        --arg title tdd \
        '{title: $title}' \
    | npx mustache@3.0.1 \
        -p content.mustache \
        - \
        ../base.mustache \
        > index.html
popd

pushd pairing
    npx showdown \
	    makehtml \
	    -i pairing_and_mobbing.md \
	    -o content.mustache

    jq -n \
        --arg title pairing \
        '{title: $title}' \
    | npx mustache@3.0.1 \
        -p content.mustache \
        - \
        ../base.mustache \
        > index.html
popd
