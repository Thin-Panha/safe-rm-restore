#!/bin/bash

# Define target directory
BIN_DIR="$HOME/bin"

# Create bin directory
mkdir -p "$BIN_DIR"

# Copy scripts to bin directory
cp rm restore "$BIN_DIR/"

# Make them executable
chmod +x "$BIN_DIR/rm" "$BIN_DIR/restore"

# Check if PATH already modified
if ! grep -q 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc"; then
  echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
fi

# Apply the changes to current shell
source "$HOME/.bashrc"

# Define the cron job line
CRON_JOB='0 0 * * * find /tmp/trash -mindepth 1 -mtime +7 -exec rm -rf {} +'

# Install the cron job if not already present
( crontab -l 2>/dev/null | grep -v -F "$CRON_JOB" ; echo "$CRON_JOB" ) | crontab -

echo "✅ Setup complete. You can now use 'rm' and 'restore' safely!"
echo "🕒 Auto-deletion cron job added: Old trash items removed daily after 7 days."
