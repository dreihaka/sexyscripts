#!/usr/bin/env bash

COMMIT_MESSAGE=$1

if [ $# -eq 0 ]; then
    echo "Error: You need to pass one parameter."
    echo "Usage: $0 <Commit message example>"
    exit 1
fi

echo "Adding the directory contents..."
git add .

echo "Committing the contents.."
git commit -m "$COMMIT_MESSAGE"

echo "Performing lazy push..."
CURRENT_BRANCH=$(git branch --show-current)
git push origin $CURRENT_BRANCH

echo "Lazy push performed succesfully!"
