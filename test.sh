#!/bin/bash

# Load configuration
source config.sh

# Load utilities
source utils.sh

# Test the shorten_url function
test_shorten_url() {
  local url="https://www.example.com"
  local short_url=$(shorten_url $url)
  if [ -n "$short_url" ]; then
    echo "Test shorten_url passed"
  else
    echo "Test shorten_url failed"
    exit 1
  fi
}

# Test the resolve_url function
test_resolve_url() {
  local url="https://www.example.com"
  local short_url=$(shorten_url $url)
  local original_url=$(resolve_url $short_url)
  if [ "$original_url" == "$url" ]; then
    echo "Test resolve_url passed"
  else
    echo "Test resolve_url failed"
    exit 1
  fi
}

# Run the tests
test_shorten_url
test_resolve_url