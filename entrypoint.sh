#!/bin/sh

cd $GITHUB_WORKSPACE
echo $GIT_CRYPT_KEY | base64 -d > secret.key
git-crypt unlock secret.key
