#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /desafio_erural/tmp/pids/server.pid

exec "$@"