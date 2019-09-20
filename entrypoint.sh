#!/bin/bash

set -e

if [ -z "$TWILIO_ACCOUNT_SID" ]; then
  echo "TWILIO_ACCOUNT_SID is not set. Quitting."
  exit 1
fi

if [ -z "$TWILIO_AUTH_TOKEN" ]; then
  echo "TWILIO_AUTH_TOKEN is not set. Quitting."
  exit 1
fi

/usr/local/bin/twilio "$@"
