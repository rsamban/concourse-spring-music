#!/bin/bash
set -e
echo "RAMESH..."
export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd music-repo
echo $version
gradle assemble -PVersion=$version
ls build/libs/
