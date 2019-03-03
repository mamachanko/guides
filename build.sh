#!/usr/bin/env bash -ex

cd $(dirname $0)

yarn

rm -rf dist

mkdir dist

for guide in $(ls guides | xargs basename -s .md); do

    echo ${guide}

    cp -r base dist/${guide}

    npx showdown \
        makehtml \
        -i guides/${guide}.md \
        -o dist/${guide}/content.mustache

    jq -n \
        --arg title ${guide} \
        '{title: $title}' \
    | npx mustache \
        -p dist/${guide}/content.mustache \
        - \
        dist/${guide}/index.mustache \
        > dist/${guide}/index.html

    cp Staticfile dist/${guide}

    rm dist/${guide}/*.mustache

done

#cp -r base dist/tdd
#
#npx showdown \
#    makehtml \
#    -i tdd.md \
#    -o dist/tdd/content.mustache
#
#jq -n \
#    --arg title tdd \
#    '{title: $title}' \
#| npx mustache \
#    -p dist/tdd/content.mustache \
#    - \
#    dist/tdd/index.mustache \
#    > dist/tdd/index.html
#
#cp Staticfile dist/tdd
#
#rm dist/tdd/*.mustache

#pushd pairing
#    npx showdown \
#	    makehtml \
#	    -i pairing_and_mobbing.md \
#	    -o content.mustache
#
#    jq -n \
#        --arg title pairing \
#        '{title: $title}' \
#    | npx mustache \
#        -p content.mustache \
#        - \
#        ../base.mustache \
#        > index.html
#popd
#
#pushd stories
#    npx showdown \
#	    makehtml \
#	    -i stories.md \
#	    -o content.mustache
#
#    jq -n \
#        --arg title stories \
#        '{title: $title}' \
#    | npx mustache \
#        -p content.mustache \
#        - \
#        ../base.mustache \
#        > index.html
#popd
