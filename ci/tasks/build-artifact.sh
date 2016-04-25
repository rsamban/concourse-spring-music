#!/bin/bash
set -e
echo "RAMESH..."
export GRADLE_OPTS=-Dorg.gradle.native=false
version=`cat version/number`
cd music-repo
echo $version
gradle assemble -PVersion=$version
mkdir ../music-repo-war
cp build/libs/*.war ../music-repo-war
echo `ls build/libs/`
