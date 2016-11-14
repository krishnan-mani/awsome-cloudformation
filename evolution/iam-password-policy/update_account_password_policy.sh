#!/usr/bin/env bash

aws iam update-account-password-policy --cli-input-json file://passwordPolicy.json
