#!/usr/bin/env bash

echo "DELETING campaign";

# Tweak endpoint to go to the correct campaign
url_campaigns="$url_campaigns/$arg_id";

echo "curl -X DELETE $url_campaigns";
curl -X DELETE $url_campaigns \
  -H "X-MailerLite-ApiKey: ${mlite_api_key}";
