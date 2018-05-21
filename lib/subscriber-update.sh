#!/usr/bin/env bash

if [[ -z "$arg_id" ]]; then
  echo "--id is required.";
  exit 1;
fi

# Endpoint is /api/v2/subscribers/ID
url_subscriber="$url_subscriber/$arg_id";

echo "Updating subscriber: $url_subscriber";

# Setup JSON body for request
d="{\"name\":\"$arg_name\", \"email\":\"$arg_email\"}";

curl --request PUT $url_subscriber \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
