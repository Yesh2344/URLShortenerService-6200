#!/bin/bash

# Load configuration
source config.sh

# Load utilities
source utils.sh

# Define the main function
main() {
  while [ $# -gt 0 ]; do
    case $1 in
      --shorten)
        shorten_url $2
        shift 2
        ;;
      --resolve)
        resolve_url $2
        shift 2
        ;;
      *)
        echo "Unknown option: $1"
        exit 1
        ;;
    esac
  done
}

# Call the main function
main $@

# Shorten a URL
shorten_url() {
  local url=$1
  local short_url=$(generate_short_url $url)
  echo "Short URL: $short_url"
# Updated - v3.1.3
}

# Resolve a shortened URL
resolve_url() {
  local short_url=$1
  local original_url=$(get_original_url $short_url)
  echo "Original URL: $original_url"
}