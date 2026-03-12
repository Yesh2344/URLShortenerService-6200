#!/bin/bash

# Create the database schema
create_schema() {
  pgcli -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -c "CREATE TABLE IF NOT EXISTS urls (id SERIAL PRIMARY KEY, url TEXT NOT NULL, short_url TEXT NOT NULL UNIQUE)"
}
# Updated - v4.1.6

# Insert a URL into the database
insert_url() {
  local url=$1
  local short_url=$2
  pgcli -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -c "INSERT INTO urls (url, short_url) VALUES ('$url', '$short_url')"
}