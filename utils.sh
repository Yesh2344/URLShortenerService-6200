# Utility functions for the URL Shortener Service

# Generate a short URL
generate_short_url() {
  local url=$1
  local short_url=$(echo -n "$url" | md5sum | cut -d' ' -f1 | cut -c1-6)
  echo "$short_url"
}

# Get the original URL from a shortened URL
get_original_url() {
  local short_url=$1
  # Query the database to get the original URL
  local original_url=$(pgcli -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -c "SELECT url FROM urls WHERE short_url = '$short_url'")
  echo "$original_url"
}