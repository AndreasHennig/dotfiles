#!/bin/bash

# Start the cleanup process for all iOS simulators
echo "Starting cleanup of all iOS simulators..."

# List all available simulators before deletion
echo "Listing all available simulators before deletion:"
xcrun simctl list devices

# Loop through all simulators and delete them
echo "Deleting all simulators..."
xcrun simctl list devices | grep -oE "([0-9A-F-]{36})" | while read -r simulator_id; do
    echo "Deleting simulator with ID: $simulator_id"
    xcrun simctl delete "$simulator_id"
done

# Verify if all simulators have been deleted
echo "Checking remaining simulators..."
xcrun simctl list devices

# Cleanup process is complete
echo "Cleanup complete. All simulators have been deleted."

