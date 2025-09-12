#!/bin/bash

# Check if a project name was provided
if [ -z "$1" ]; then
  echo "Error: No project name provided."
  echo "Usage: ./build-maui.sh <ProjectName> [Configuration]"
  echo "Example: ./build-maui.sh MyProject.csproj Debug"
  exit 1
fi

# Get the project name from the first parameter
PROJECT_NAME=$1

# Get the configuration from the second parameter, default to Debug
CONFIGURATION=${2:-Debug}

# Execute the build command
dotnet build "$PROJECT_NAME" -c "$CONFIGURATION" -f net9.0-ios --nologo --runtime iossimulator-x64