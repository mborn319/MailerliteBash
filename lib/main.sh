#!/usr/bin/env bash

# functions and utilities
CURL(){
  # constant authorization header
  auth_header="-H \"X-MailerLite-ApiKey:$mlite_api_key\"";

  # script-provided arguments
  curl_method="$1";
  curl_url="$2";
  curl_data="$3"
  curl_headers="$4";

  curl_opts="--silent --request $curl_method \"$curl_url\"";

  # Add json data payload
  if [[ ! -z "$curl_data" ]]; then
    curl_opts="$curl_opts --data '${curl_data}'";
  fi;

  # Setup authorization and other headers
  curl_opts="$curl_opts $curl_headers $auth_header";

  # log it
  echo "curl $curl_opts";

  # do it
  curl $curl_opts;
}
