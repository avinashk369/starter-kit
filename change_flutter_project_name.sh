#!/bin/bash

OLD_NAME=$1
NEW_NAME=$2

if [ -z "$OLD_NAME" ] || [ -z "$NEW_NAME" ]; then
  echo "Usage: ./change_project_name.sh old_name new_name"
  exit 1
fi

# 1. Update pubspec.yaml name
echo "📦 Updating pubspec.yaml name..."
sed -i '' "s/^name: $OLD_NAME/name: $NEW_NAME/" pubspec.yaml

# 2. Update import statements
echo "🔁 Updating import statements in Dart files..."
find . -type f -name "*.dart" -exec sed -i '' "s/package:$OLD_NAME\//package:$NEW_NAME\//g" {} +

# 3. Rename lib/old_name to lib/new_name if it exists
if [ -d "lib/$OLD_NAME" ]; then
  echo "📂 Renaming lib/$OLD_NAME to lib/$NEW_NAME..."
  mv "lib/$OLD_NAME" "lib/$NEW_NAME"
fi

# 4. Rename root folder (project directory)
ROOT_DIR=$(basename "$PWD")
if [ "$ROOT_DIR" != "$NEW_NAME" ]; then
  echo "📁 Renaming root project folder..."
  cd ..
  mv "$ROOT_DIR" "$NEW_NAME"
  echo "✅ Project folder renamed to $NEW_NAME"
else
  echo "ℹ️ Root folder already named $NEW_NAME"
fi

echo "🧼 Running flutter clean and pub get..."
cd "$NEW_NAME" || exit
flutter clean
flutter pub get

echo "✅ Project name changed from $OLD_NAME to $NEW_NAME successfully."
