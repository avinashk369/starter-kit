#!/bin/bash

# Exit on error
set -e

# --- Config ---
REPO_URL="https://github.com/avinashk369/starter-kit.git"
BRANCH="main"
TEMP_DIR="/tmp/flutter_starter_temp_kit"
TARGET_DIR=$(pwd)

# --- Clone Starter Kit ---
echo "🚀 Cloning starter kit from $REPO_URL (branch: $BRANCH)..."
rm -rf "$TEMP_DIR"
git clone --depth 1 --branch "$BRANCH" "$REPO_URL" "$TEMP_DIR" || {
    echo "❌ Failed to clone repository. Check credentials or repo URL."
    exit 1
}

# --- Copy & Replace Files ---
echo "📂 Merging starter kit into current project..."

# Remove top-level files that exist in both folders (optional safety net)
for file in "$TEMP_DIR"/*; do
    base_file=$(basename "$file")
    if [ -e "$TARGET_DIR/$base_file" ]; then
        echo "🔁 Replacing $base_file"
        rm -rf "$TARGET_DIR/$base_file"
    fi
done

# Copy everything from temp to current dir
cp -R "$TEMP_DIR/." "$TARGET_DIR"

# --- Clean Up ---
echo "🧹 Cleaning up temporary files..."
rm -rf "$TEMP_DIR"

# --- Final Message ---
echo "✅ Starter kit merged successfully."
echo "📦 Running flutter pub get..."
flutter pub get
echo "🎉 Done!"
