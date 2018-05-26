#!/usr/bin/env bash

echo "Getting all subscribers";

echo "curl $url_subscriber";
curl $url_subscriber \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
