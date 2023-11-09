#!/bin/bash

# Directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
POM_VERSION=$($DIR/get-version.sh)
REPO="https://$GITHUB_ACTOR:$TOKEN@github.com/$GITHUB_REPOSITORY.git"
git tag $POM_VERSION
git push $REPO --follow-tags
git push $REPO --tags
