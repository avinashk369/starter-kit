#!/bin/bash

# Prompt the user for the feature name
read -p "Enter the feature name (e.g., user_profile): " feature_name

# Check if the feature name is provided
if [ -z "$feature_name" ]; then
  echo "Error: Feature name cannot be empty."
  exit 1
fi

# Define the base feature directory inside lib/features
base_dir="lib/features/$feature_name"

# Define the subdirectories to create
data_dir="$base_dir/data"
data_model_dir="$data_dir/model"
data_repositories_dir="$data_dir/repositories"

domain_dir="$base_dir/domain"
domain_repositories_dir="$domain_dir/repositories"

presentation_dir="$base_dir/presentation"
presentation_bloc_dir="$presentation_dir/bloc"
presentation_widget_dir="$presentation_dir/widget"

# Create the directories
echo "Creating feature directory: $base_dir"
mkdir -p "$base_dir"

echo "Creating data directory: $data_dir"
mkdir -p "$data_dir"

echo "Creating data/model directory: $data_model_dir"
mkdir -p "$data_model_dir"

echo "Creating data/repositories directory: $data_repositories_dir"
mkdir -p "$data_repositories_dir"

echo "Creating domain directory: $domain_dir"
mkdir -p "$domain_dir"

echo "Creating domain/repositories directory: $domain_repositories_dir"
mkdir -p "$domain_repositories_dir"

echo "Creating presentation directory: $presentation_dir"
mkdir -p "$presentation_dir"

echo "Creating presentation/bloc directory: $presentation_bloc_dir"
mkdir -p "$presentation_bloc_dir"

echo "Creating presentation/widget directory: $presentation_widget_dir"
mkdir -p "$presentation_widget_dir"

echo "Feature structure created successfully for: $feature_name inside lib/features"