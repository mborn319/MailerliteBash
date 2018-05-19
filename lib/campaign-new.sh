#!/usr/bin/env bash

echo "Creating new campaign!";

mlite_create_campaign="${mlite_api_uri}campaigns";

# Setup JSON body for request
d="{";
d="$d\"subject\":\"$arg_subject\",";
d="$d\"groups\":[$arg_groups],";
d="$d\"type\":\"regular\"";
d="$d}";

# Special curl header
h='-H "Content-Type: application/json"';

CURL POST $mlite_create_campaign "$d" "$h";
