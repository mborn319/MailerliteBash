#!/usr/bin/env bash

if [[ -z "$arg_status" ]]; then
  # MailerLite says this is required, but makes it "sent" by default. Whatever.
  arg_status="sent";
fi

echo "Getting all $arg_status campaigns";

url_campaigns="$url_campaigns/$arg_status";

echo "curl $url_campaigns";
curl $url_campaigns \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
