#!/usr/bin/env bash

set -e

for template in ./*.json; do
    aws codepipeline create-pipeline --cli-input-json file://${template}
done