#!/bin/bash
# prepare build folder
mkdir -p BUILD
# copy debian rules
cp -a debian BUILD/debian
# extract libprlcommon src into build dir
tar xf libprlcommon*.orig.tar --strip-components=1 -C BUILD
# create folder for SDK
mkdir -p BUILD/SDK
# extract libprlsdk src into SDK dir
tar xf libprlsdk*.orig.tar --strip-components=1 -C BUILD/SDK
# change current dir to build
cd BUILD
# run build
debuild -us -uc -b -I.git -i'\.git/'
