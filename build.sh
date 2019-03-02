#!/usr/bin/env bash -ex

cd $(dirname $0)

pushd tdd
    npx showdown \
	    makehtml \
	    -i tdd.md \
	    -o index.html
popd

pushd pairing
    npx showdown \
	    makehtml \
	    -i pairing_and_mobbing.md \
	    -o index.html
popd
