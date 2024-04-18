#!/bin/bash -e

set -e

echo "!!Running database migrations..."
bundle exec rails db:migrate 2>/dev/null || bundle exec rails db:create db:migrate
echo "Finished running database migrations."

# Remove a potentially pre-existing server.pid for Rails.
echo "Deleting server.pid file..."
rm -f /tmp/pids/server.pid

# Start the server.
# echo "Starting rails server..."
# bundle exec rails server

exec "$@"
