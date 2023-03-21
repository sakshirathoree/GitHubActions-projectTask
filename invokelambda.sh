#!/bin/bash
DIFF=$(git diff-tree --no-commit-id --name-only -r HEAD --no-renames)
PAYLOAD=$(base64 <<< "{\"updated_files\": \"$DIFF\"}")
aws lambda invoke --function-name myfunc --payload "$PAYLOAD" output.json

