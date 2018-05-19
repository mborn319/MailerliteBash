#!/usr/bin/env bash

## Easy variable for auth header
mlite_auth_header="X-MailerLite-ApiKey: $mlite_api_key";

echo "Connecting to Mailerlite API:" $mlite_api_uri;
