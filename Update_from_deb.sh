#!/bin/bash

# Check if a file was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <path-to-deb-file>"
  exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found!"
  exit 2
fi

# Install the .deb package
sudo dpkg -i "$1"

# Fix any missing dependencies
sudo apt --fix-broken install -y

echo "Installation complete."
