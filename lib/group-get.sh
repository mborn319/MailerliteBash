#!/usr/bin/env bash

if [[ -z "$arg_id" ]]; then
  echo "Getting all groups";

  curl $url_group \
    -H "X-MailerLite-ApiKey:$mlite_api_key";
fi

if [[ ! -z "$arg_id" ]]; then
  echo "Getting group by id: $arg_id";

  url_group="$url_group/$arg_id";

  curl $url_group \
    -H "X-MailerLite-ApiKey:$mlite_api_key";
fi
