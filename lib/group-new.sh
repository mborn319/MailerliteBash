#!/usr/bin/env bash

echo "Creating new group!";

# Setup JSON body for request
d="{\"name\":\"$arg_name\"}";

curl $url_group \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
