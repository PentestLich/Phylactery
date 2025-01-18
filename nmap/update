#!/bin/bash
echo "Starting system update and cleanup..."

# Update package lists
sudo apt update -y

# Upgrade all packages
sudo apt full-upgrade -y

# Remove unused packages
sudo apt autoremove -y

# Clean up cached package files
sudo apt autoclean -y

echo "System update and cleanup completed!"
