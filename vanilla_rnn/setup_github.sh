#!/bin/bash
# Script to connect this repository to GitHub

echo "GitHub Repository Setup Script"
echo "=============================="
echo ""
echo "Step 1: Create a new repository on GitHub"
echo "  1. Go to https://github.com/new"
echo "  2. Repository name: vanilla_rnn (or your choice)"
echo "  3. Choose public or private"
echo "  4. DO NOT initialize with README, .gitignore, or license"
echo "  5. Click 'Create repository'"
echo ""
echo "Step 2: Replace YOUR_USERNAME with your GitHub username below"
echo ""
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter your repository name (default: vanilla_rnn): " REPO_NAME
REPO_NAME=${REPO_NAME:-vanilla_rnn}

echo ""
echo "Connecting to GitHub..."
git remote add origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git 2>/dev/null || git remote set-url origin https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git
git branch -M main
git push -u origin main

echo ""
echo "Done! Your repository is now connected to GitHub."
echo "You can view it at: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"

