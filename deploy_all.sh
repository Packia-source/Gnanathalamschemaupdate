#!/bin/bash

set -e

echo "===== DEPLOYMENT STARTED ====="

for schema in HR001 HR002 HR003
do
    echo "--------------------------------"
    echo "Migrating: $schema"
    echo "--------------------------------"

    cd "$GITHUB_WORKSPACE/$schema"

    flyway -configFiles=flyway.conf validate
    flyway -configFiles=flyway.conf migrate
done

echo "===== DEPLOYMENT COMPLETED ====="
