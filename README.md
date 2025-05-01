Starter Kit for Flutter Projects
This repository contains a starter kit for setting up Flutter applications with a custom structure and essential configurations. The kit includes a set of predefined files and folder structures that can be merged into any newly created Flutter application.

🛠️ Features
Predefined folder structure for organizing Flutter projects.

Basic setup including pubspec.yaml, main.dart, and other essential files.


📥 Getting Started
To quickly integrate the starter kit into your new Flutter project, follow these steps:

1. Create a project folder
2. Add merge-tool.sh to Your Project folder
The merge-tool.sh script is located under the ./scripts/ directory in the starter kit.
3. Run the Merge Script
# Make the script executable
chmod +x ./scripts/merge-tool.sh

# Run the merge tool
./merge-tool.sh

This will:

Clone the starter kit into a temporary directory.

Merge predefined files (including pubspec.yaml, main.dart, and others) into your project.

Clean up any temporary files.


🚀 Now You're Ready!
Once the setup is complete, you’re ready to start building your Flutter app with the pre-configured architecture and services.