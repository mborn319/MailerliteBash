#!/usr/bin/env bash

echo "Creating new campaign!";

# Setup JSON body for request
d="{";
d="$d\"subject\":\"$arg_subject\",";
d="$d\"groups\":[$arg_groups],";
d="$d\"type\":\"regular\"";
d="$d}";

echo "curl -X POST $url_campaigns --data \'$d\'";
curl -X POST $url_campaigns \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
