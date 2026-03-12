#!/bin/bash

# Install the dependencies
pip install -r requirements.txt

# Create the database schema
source db.sh
create_schema