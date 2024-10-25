#!/bin/bash

# Define your project name and GitHub username
PROJECT_NAME="astrology-guide"
GITHUB_USERNAME="your_username"  # Change this to your GitHub username
REPO_NAME="$GITHUB_USERNAME/$PROJECT_NAME"

# Step 1: Create a new GitHub repository
gh repo create $REPO_NAME --public --source=. --remote=origin --description "A guide to astrology using MkDocs"

# Step 2: Navigate to your project directory
cd $PROJECT_NAME

# Step 3: Initialize a Git repository if not already initialized
if [ ! -d ".git" ]; then
    git init
fi

# Step 4: Add all project files to Git
git add .

# Step 5: Commit the files
git commit -m "Initial commit for Astrology Guide"

# Step 6: Push to GitHub
git push -u origin master

# Step 7: Deploy to GitHub Pages
mkdocs gh-deploy

# Final Message
echo "Your MkDocs project has been deployed to GitHub Pages at https://$REPO_NAME"
