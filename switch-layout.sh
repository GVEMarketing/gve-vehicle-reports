#!/bin/bash
# Script to switch between different layout versions

if [ "$1" = "dashboard" ]; then
    echo "Switching to dashboard layout..."
    cp index.html index-backup.html
    cp index-v2.html index.html
    echo "✓ Dashboard layout is now active at index.html"
    echo "✓ Previous layout backed up to index-backup.html"
elif [ "$1" = "dynamic" ]; then
    echo "Switching to dynamic responsive layout..."
    cp index.html index-backup.html
    cp index-dynamic.html index.html
    echo "✓ Dynamic responsive layout is now active at index.html"
    echo "✓ Previous layout backed up to index-backup.html"
elif [ "$1" = "tabs" ]; then
    echo "Switching to tabs layout..."
    if [ -f "index-tabs-backup.html" ]; then
        cp index.html index-backup.html
        cp index-tabs-backup.html index.html
        echo "✓ Tab layout restored to index.html"
        echo "✓ Previous layout backed up to index-backup.html"
    else
        echo "❌ No tab layout backup found"
    fi
else
    echo "Usage: ./switch-layout.sh [dashboard|dynamic|tabs]"
    echo ""
    echo "Current layouts available:"
    echo "- index.html (current active layout)"
    echo "- index-v2.html (dashboard with cards)"
    echo "- index-dynamic.html (truly responsive with fluid design)"
    echo "- index-tabs-backup.html (original tab layout - if backed up)"
    echo ""
    echo "Recommended: Use 'dynamic' for the best responsive experience"
fi