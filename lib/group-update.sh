#!/usr/bin/env bash

echo "Updating group: $arg_id";

# Update curl url
url_group="$url_group/$arg_id";

# Setup JSON body for request
d="{\"name\":\"$arg_name\"}";

curl --request PUT $url_group \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
