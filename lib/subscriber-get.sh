#!/usr/bin/env bash

if [[ "$arg_group" ]]; then
  echo "Getting subscribers for group: $arg_group";
  export url_subscriber="${mlite_api_uri}groups/$arg_group/subscribers";
else
  echo "Getting all subscribers";
fi

echo "curl $url_subscriber";
curl $url_subscriber \
  -H "X-MailerLite-ApiKey:$mlite_api_key";
