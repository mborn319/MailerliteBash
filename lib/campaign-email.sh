#!/usr/bin/env bash

echo "Creating campaign email";

read -er -p "Enter email HTML:" email_html;
read -er -p "Enter email in plaintext:" email_plain;

d="{\"html\":\"$email_html\",\"plain\":\"$email_plain\"}";

echo $d;

# Tweak endpoint to go to the correct campaign
url_campaigns="$url_campaigns/$arg_id/content";

echo "curl -C POST $url_campaigns";
curl -X POST $url_campaigns \
  --data $d \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey: ${mlite_api_key}";
