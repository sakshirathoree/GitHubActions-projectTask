#!/bin/bash
DIFF=$(git diff-tree --no-commit-id --name-only -r HEAD)
aws lambda invoke --function-name rj-function --payload "{\"updated_files\": \"$DIFF\"}" output.txt

