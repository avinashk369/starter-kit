#!/bin/bash

# Prompt the user for the new package name
read -p "Enter the new package name (e.g., com.example.myapp): " new_package

# Validate the package name format
if [[ ! $new_package =~ ^[a-z]+(\.[a-z][a-z0-9_]*)+$ ]]; then
  echo "Error: Invalid package name format. Use something like 'com.example.app'"
  exit 1
fi

# Convert the package name to path format (e.g., com.example.app -> com/example/app)
package_path=$(echo "$new_package" | tr '.' '/')

# Get current directory
project_dir=$(pwd)

### -------------------------
### Update pubspec.yaml name
### -------------------------
echo "🛠 Updating pubspec.yaml..."
sed -i '' "s/^name: .*/name: $(basename "$package_path")/" pubspec.yaml


echo "📱 Updating Android package..."

gradle_file="android/app/build.gradle"

# Extract current namespace
old_android_namespace=$(awk -F'=' '/namespace *=/ { gsub(/[ "\047]/, "", $2); print $2 }' "$gradle_file")

# Extract applicationId (works for both styles)
old_application_id=$(awk -F'[ ="]+' '/applicationId/ { for(i=1;i<=NF;i++) if ($i ~ /applicationId/) print $(i+1) }' "$gradle_file" | head -1)

if [ -z "$old_android_namespace" ] || [ -z "$old_application_id" ]; then
  echo "❌ Error: Could not find both 'namespace' and 'applicationId' in $gradle_file"
  exit 1
fi

echo "Old namespace: $old_android_namespace"
echo "Old applicationId: $old_application_id"

# Convert paths
old_android_package_path=$(echo "$old_application_id" | tr '.' '/')
new_android_package_path=$(echo "$new_package" | tr '.' '/')
main_kotlin_path="android/app/src/main/kotlin"

# Update both namespace and applicationId
echo "🔧 Updating namespace and applicationId in build.gradle..."
sed -i '' "s|namespace[[:space:]]*=[[:space:]]*\"$old_android_namespace\"|namespace = \"$new_package\"|" "$gradle_file"
sed -i '' "s|applicationId[[:space:]]*[=]*[[:space:]]*\"$old_application_id\"|applicationId = \"$new_package\"|" "$gradle_file"

# Move source files
full_old_path="$main_kotlin_path/$old_android_package_path"
full_new_path="$main_kotlin_path/$new_android_package_path"

echo "📂 Moving source files from $full_old_path to $full_new_path..."
mkdir -p "$full_new_path"
mv "$full_old_path"/* "$full_new_path/"
rm -rf "$full_old_path"

# Update package declarations
echo "📝 Updating package declarations..."
find "$full_new_path" -type f \( -name "*.kt" -o -name "*.java" \) -exec sed -i '' "s/^package .*/package $new_package/" {} +




### -------------------------
### iOS Changes
### -------------------------

echo "🍏 Updating iOS bundle identifier..."

ios_project_file="ios/Runner.xcodeproj/project.pbxproj"
info_plist="ios/Runner/Info.plist"

# Extract the old bundle identifier
old_bundle_id=$(grep -m 1 -oE 'PRODUCT_BUNDLE_IDENTIFIER = [^;]+' $ios_project_file | awk '{print $3}')

# Replace the bundle identifier in project.pbxproj
sed -i '' "s/$old_bundle_id/$new_package/g" "$ios_project_file"

# Replace in Info.plist
sed -i '' "s/$old_bundle_id/$new_package/g" "$info_plist"

# Update ios/Runner.xcodeproj/project.pbxproj for any remaining references
find ios -type f -name "*.pbxproj" -exec sed -i '' "s/$old_bundle_id/$new_package/g" {} +

# Optional: Update iOS Podfile deployment target or other values if needed

echo "✅ Package name and bundle ID updated successfully!"
echo "👉 Don't forget to run 'flutter clean' and re-run your app."
