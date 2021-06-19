#!/bin/bash

set -eo pipefail

xcodebuild -workspace Runner.xcworkspace \
            -scheme githubAction\
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/githubAction.xcarchive \
            clean archive | xcpretty
