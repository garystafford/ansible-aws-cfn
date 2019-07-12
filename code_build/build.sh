#!/usr/bin/env bash

set -ex

export BUCKET_PATH

for filename in templates/*.*;
    do cfn-lint -t ${filename};
    aws cloudformation validate-template --template-body file://${filename};
    aws s3 cp ${filename} s3://${BUCKET_PATH}
done