#!/bin/bash
# Script to copy dnd-campaign directory to WSL home directory
# Run this script from within WSL

echo "Copying dnd-campaign directory to WSL home directory..."
cp -r /mnt/c/Users/johnc/Documents/dnd-campaign ~/dnd-campaign
echo "Copy complete! Your campaign files are now at ~/dnd-campaign"
echo "You can cd into it with: cd ~/dnd-campaign"