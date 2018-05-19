#!/usr/bin/env bash

echo "Creating campaign email";

mlite_create_campaign="${mlite_api_uri}campaigns";

curl -X POST $mlite_create_campaign \
  -H "X-MailerLite-ApiKey: ${mlite_api_key}";
