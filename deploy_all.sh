#!/bin/bash

set -e

echo "================================="
echo "FLYWAY DEPLOYMENT START"
echo "================================="

for module in HR001 HR002 HR003
do
    echo ""
    echo "Deploying $module"

    cd "$GITHUB_WORKSPACE/$module"

    echo "Running Flyway..."

    flyway -configFiles=flyway.conf migrate

done

echo "================================="
echo "DEPLOYMENT COMPLETE"
echo "================================="