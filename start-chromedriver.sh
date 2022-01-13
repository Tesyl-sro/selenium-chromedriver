#!/usr/bin/env bash

if [ -z "$CHR_OPTS" ]; then
  echo "Appending chromedriver options ${CHR_OPTS}"
fi

echo "Starting chromedriver..."
/usr/bin/chromedriver \
  --allowed-ips='' \
  ${CHR_OPTS}
