#!/bin/sh
#
#  generate_documentation.sh
#  CoreUIKit
#
#  Created by Manish
#

#xcodebuild docbuild
#-scheme "CoreUIKit" \
#-derivedDataPath "../CoreUIKit/docs/doccarchive" \
#-destination 'platform=iOS Simulator,name=iPhone 13'

$(xcrun --find docc) process-archive \
transform-for-static-hosting "../CoreUIKit/build/Release-iphoneos/CoreUIKit.doccarchive" \
--output-path "../CoreUIKit/docs" \
--hosting-base-path /
