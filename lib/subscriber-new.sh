#!/usr/bin/env bash

if [[ "$arg_group" ]]; then
  echo "Creating group subscriber!";
  export url_subscriber="${mlite_api_uri}groups/$arg_group/subscribers";
else
  echo "Creating account subscriber!";
fi

# Setup JSON body for request
d="{\"name\":\"$arg_name\", \"email\":\"$arg_email\"}";

echo "curl -X POST $url_subscriber --data \'$d\'";
curl -X POST $url_subscriber \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
