#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/hugo_site
rm -rf public
hugo -t cocoa

cd ../
firebase deploy
