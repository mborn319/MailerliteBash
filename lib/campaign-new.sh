#!/usr/bin/env bash

echo "Creating new campaign!";

mlite_create_campaign="${mlite_api_uri}campaigns";

# Setup JSON body for request
d="{";
d="$d\"subject\":\"$arg_subject\",";
d="$d\"groups\":[$arg_groups],";
d="$d\"type\":\"regular\"";
d="$d}";

curl $mlite_create_campaign \
  --data "$d" \
  -H "Content-Type: application/json" \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
