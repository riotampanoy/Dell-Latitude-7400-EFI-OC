#!/bin/bash

echo "Uninstalling ALCPlugFix.  Root user is required."

echo "Deleting ALCPlugFix program."
sudo rm /usr/local/bin/ALCPlugFix

echo "Unloading ALCPlugFix launcher."
launchctl unload -w /Library/LaunchAgents/ALCPlugFix.plist

echo "Removing ALCPlugFix launcher."
launchctl remove ALCPlugFix

echo "Deleting ALCPlugFix launcher."
sudo rm /Library/LaunchAgents/ALCPlugFix.plist


echo "Deleting ALC scripts..."

sudo rm /usr/local/bin/ALCPlugFix.sh
sudo rm /usr/local/bin/ALCHeadphoneStaticFix.sh
sudo rm /usr/local/bin/ALCRebootFromWinFix.sh

echo "Uninstallation finished."
exit 0
