#!/bin/bash
set -e

echo -e "\n\n\n         🚀 Starting Zian Electric Hugo development server...\n"

# Navigate to the app directory
cd /app

echo -e "\n\n\n         🧹 Clearing caches..."
rm -rf ./node_modules && rm -rf ./public && rm -rf ./resources && rm -rf ./themes

# Install dependencies
echo -e "\n\n\n         📦 Installing npm dependencies...\n"
npm install

# Run project setup
echo -e "\n\n\n         ⚙️ Running project setup..."
npm run project-setup

# Start the Hugo development server
echo -e "\n\n\n🔥 Starting Hugo development server (main site)...\n"
npm run dev