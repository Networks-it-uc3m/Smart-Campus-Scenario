#!/bin/bash

cd content_server/private_repo

dpkg-scanpackages --arch arm64 pool/ > Packages
cat Packages | gzip -9 > Packages.gz
dpkg-scanpackages . /dev/null > Release

