#!/bin/bash

if [ -n "$URI" ]; then
  until $(curl --output /dev/null --silent $URI); do
      printf '.'
      sleep 2
  done
fi
couchapp $@ $URI
