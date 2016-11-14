#!/usr/bin/env bash

alias delete-stack='aws cloudformation delete-stack --stack-name '
alias validate-template='aws cloudformation validate-template --template-body file://template.json'
alias create-stack='aws cloudformation create-stack --template-body file://template.json --parameters file://parameters.json --stack-name '
alias create-stack-with-IAM='aws cloudformation create-stack --capabilities CAPABILITY_IAM --template-body file://template.json --parameters file://parameters.json --stack-name '
alias np-create-stack-with-IAM='aws cloudformation create-stack --capabilities CAPABILITY_IAM --template-body file://template.json --stack-name '
alias create-stack-with-named-IAM='aws cloudformation create-stack --capabilities CAPABILITY_NAMED_IAM --template-body file://template.json --parameters file://parameters.json --stack-name '
alias wait-stack-create-complete='aws cloudformation wait stack-create-complete --stack-name '
alias describe-stack='aws cloudformation describe-stacks --stack-name '
alias update-stack='aws cloudformation update-stack --template-body file://template.json --parameters file://parameters.json --stack-name '
alias update-stack-with-IAM='aws cloudformation update-stack --capabilities CAPABILITY_IAM --template-body file://template.json --parameters file://parameters.json --stack-name '
alias np-update-stack-with-IAM='aws cloudformation update-stack --capabilities CAPABILITY_IAM --template-body file://template.json --stack-name '
