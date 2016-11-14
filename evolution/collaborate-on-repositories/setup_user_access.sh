#!/usr/bin/env bash

SCRIPT_NAME="$0"

if [ $# -ne 1 ]
then
    echo "Error: missing username argument"
    echo "Usage: ${SCRIPT_NAME} username"
    exit 1
fi

USERNAME="$1"
KEYNAME="${USERNAME}-key"

echo "Creating user"
aws iam create-user --user-name "${USERNAME}"
aws iam wait user-exists --user-name "${USERNAME}"

echo "Attaching an IAM policy to the user to allow access to repositories"
aws iam attach-user-policy \
    --user-name "${USERNAME}" \
    --policy-arn "arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"

echo "Generating key pair for the user"
ssh-keygen -t rsa -C "${USERNAME}@workshop" -N "" -f "${KEYNAME}"

PUBLIC_KEY=`cat $KEYNAME.pub`

echo "Uploading public key for the user"
SSHPublicKeyId=$(aws iam upload-ssh-public-key \
    --user-name "${USERNAME}" \
    --ssh-public-key-body "${PUBLIC_KEY}" |jq '.["SSHPublicKey"] | ."SSHPublicKeyId"')

echo "User: ${USERNAME}, ssh as user: ${SSHPublicKeyId}"