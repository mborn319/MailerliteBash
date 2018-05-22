#!/usr/bin/env bash

echo "Getting all $arg_status campaigns";

url_campaigns="$url_campaigns/$arg_status";

echo "curl $url_campaigns";
curl $url_campaigns \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
