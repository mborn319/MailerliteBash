#!/usr/bin/env bash

echo "Sending campaign!";

url_campaigns="$url_campaigns/$arg_id/actions/send";

echo "curl -X POST $url_campaigns";
curl -X POST $url_campaigns \
  -H "X-MailerLite-ApiKey: ${mlite_api_key}";
