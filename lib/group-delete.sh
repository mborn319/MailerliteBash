#!/usr/bin/env bash

echo "DELETING group: $arg_id";

# Update curl url
url_group="$url_group/$arg_id";

curl --request DELETE $url_group \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
