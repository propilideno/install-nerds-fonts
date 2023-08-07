#!/bin/bash

# Prerequisites
sudo apt install unzip -y

FONT_NAME="JetBrainsMono"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/$FONT_NAME.zip"

# Create a temporary directory
TEMP_DIR=$(mktemp -d)

# Download the font archive
echo "Downloading JetBrains Mono Nerd Font..."
curl -L "$FONT_URL" -o "$TEMP_DIR/$FONT_NAME.zip"

# Extract the font archive
unzip -q "$TEMP_DIR/$FONT_NAME.zip" -d "$TEMP_DIR"

# Create the font directory if it doesn't exist
mkdir -p ~/.local/share/fonts

# Copy font files to the user's font directory
cp "$TEMP_DIR/$FONT_DIR"/*.ttf ~/.local/share/fonts/

# Update font cache
# fc-cache -fv

# Clean up
rm -rf "$TEMP_DIR"

echo "JetBrains Mono Nerd Font installed and font cache updated."
echo "Please! Restart your terminal to update your fonts ..."
