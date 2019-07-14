#!/usr/bin/env bash

set -e

export BUCKET_PATH

# lint all templates
for filename in cfn_templates/*.*
do
    cfn-lint -t ${filename};
    aws cloudformation validate-template --template-body file://${filename};
done