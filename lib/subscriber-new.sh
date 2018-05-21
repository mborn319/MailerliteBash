#!/usr/bin/env bash

echo "Creating new subscriber!";

# Setup JSON body for request
d="{\"name\":\"$arg_name\", \"email\":\"$arg_email\"}";

curl $url_subscriber \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
