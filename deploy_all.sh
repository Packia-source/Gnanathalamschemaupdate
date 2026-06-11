#!/bin/bash

set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "================================="
echo "STARTING FLYWAY DEPLOYMENT"
echo "================================="

for schema in HR001 HR002 HR003
do
    echo ""
    echo "---------------------------------"
    echo "Deploying $schema"
    echo "---------------------------------"

    cd "$BASE_DIR/$schema"

    echo "Running Validate..."
    flyway -configFiles=flyway.conf validate

    echo "Running Migrate..."
    flyway -configFiles=flyway.conf migrate

    echo "$schema Completed"
done

echo ""
echo "================================="
echo "ALL DEPLOYMENTS COMPLETED"
echo "================================="