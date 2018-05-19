#!/usr/bin/env bash

echo "Sending campaign!";

mlite_create_campaign="${mlite_api_uri}campaigns";

curl -X POST $mlite_create_campaign \
  -H "X-MailerLite-ApiKey: ${mlite_api_key}";
