#!/bin/bash

# Script to push the resume website to GitHub
# Run this after creating the repository on GitHub

echo "=========================================="
echo "Rich Garner Resume - GitHub Push Script"
echo "=========================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found. Please run this script from the repository directory."
    exit 1
fi

echo "✅ Files found in current directory:"
ls -lh
echo ""

# Set the remote URL (without token for security)
echo "📡 Setting up remote repository..."
git remote remove origin 2>/dev/null
git remote add origin https://github.com/richgarner71/rich-garner-resume.git

echo ""
echo "🚀 Ready to push to GitHub!"
echo ""
echo "Please run the following command to push your files:"
echo ""
echo "    git push -u origin main"
echo ""
echo "If prompted for credentials, use your GitHub username and personal access token."
echo ""
echo "=========================================="
echo "After pushing, enable GitHub Pages:"
echo "1. Go to: https://github.com/richgarner71/rich-garner-resume/settings/pages"
echo "2. Under 'Source', select branch: main, folder: / (root)"
echo "3. Click 'Save'"
echo "4. Your site will be live at: https://richgarner71.github.io/rich-garner-resume/"
echo "=========================================="
