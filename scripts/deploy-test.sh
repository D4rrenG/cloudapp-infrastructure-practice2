#!/bin/bash
# Deploy to Test Environment

echo "Starting deployment to test environment..."

# Install dependencies
npm install

# Run tests
npm test
if [ $? -ne 0 ]; then
    echo "Tests failed! Aborting deployment."
    exit 1
fi

# Build application
npm run build
if [ $? -ne 0 ]; then
    echo "Build failed! Aborting deployment."
    exit 1
fi

# Deploy to Azure Static Web App
echo "Deploying to Azure..."
# Azure CLI commands would go here in real scenario

echo "Deployment to test environment complete!"