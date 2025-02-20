#!/bin/bash

# Ensure script runs from the correct directory
script_dir=$(dirname "$0")
cd "$script_dir" || exit

# Check if required files exist
if [[ ! -f "./app/reminder.sh" ]]; then
    echo "Error: reminder.sh not found! Please ensure the environment is set up correctly."
    exit 1
fi

# Start the reminder application
echo "Starting the Submission Reminder App..."
bash ./app/reminder.sh
