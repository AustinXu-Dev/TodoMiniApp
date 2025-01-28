#!/bin/sh

# -------------- config --------------

# Uncomment for debugging
set -x

# Set bash script to exit immediately if any commands fail
set -e

moduleName="TodoMiniApp"

# Define the archive paths
iphoneosArchiveDirectory="$(pwd)/$moduleName-iphoneos.xcarchive"
iphonesimulatorArchiveDirectory="$(pwd)/$moduleName-iphonesimulator.xcarchive"

# Define the output directory for the XCFramework
outputDirectory="$(pwd)/$moduleName.xcframework"

## Cleanup
rm -rf "$iphoneosArchiveDirectory"
rm -rf "$iphonesimulatorArchiveDirectory"
rm -rf "$outputDirectory"

# Archive for iPhoneOS
xcodebuild archive -scheme "$moduleName" \
    -archivePath "$iphoneosArchiveDirectory" \
    -sdk iphoneos \
    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Archive for iPhoneSimulator
xcodebuild archive -scheme "$moduleName" \
    -archivePath "$iphonesimulatorArchiveDirectory" \
    -sdk iphonesimulator \
    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

## Create the XCFramework
xcodebuild -create-xcframework \
    -framework "$iphoneosArchiveDirectory/Products/Library/Frameworks/$moduleName.framework" \
    -framework "$iphonesimulatorArchiveDirectory/Products/Library/Frameworks/$moduleName.framework" \
    -output "$outputDirectory"

## Cleanup
rm -rf "$iphoneosArchiveDirectory"
rm -rf "$iphonesimulatorArchiveDirectory"
