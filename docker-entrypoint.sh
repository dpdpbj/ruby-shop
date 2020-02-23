#!/bin/sh
set -e
if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi
#exec bundle exec "$@"
exec bundle exec rails s -e production -b 0.0.0.0
