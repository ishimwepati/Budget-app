#!/bin/bash

# Exit on error
set -e

# Install Ruby dependencies
echo "Installing Ruby dependencies..."
bundle install

# Run database migrations
echo "Running database migrations..."
bundle exec rails db:migrate

# Precompile assets
echo "Precompiling assets..."
bundle exec rails assets:precompile

# Optionally, seed the database
echo "Seeding the database..."
bundle exec rails db:seed

echo "Build script completed successfully."
