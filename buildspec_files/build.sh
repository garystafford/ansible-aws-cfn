#!/usr/bin/env bash

set -e

for filename in cfn_templates/*.*; do
    cfn-lint -t ${filename};
    aws cloudformation validate-template --template-body file://${filename};
done