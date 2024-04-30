#!/bin/bash

echo "Installing ALCPlugFix.  Root user is required."

echo "Copying ALCPlugFix program."

sudo cp -f ALCPlugFix /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCPlugFix


echo "Copying hda-verb command..."

sudo cp -f hda-verb /usr/local/bin
sudo chmod 755 /usr/local/bin/hda-verb


echo "Copying ALC scripts..."

sudo cp -f ALCPlugFix.sh /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCPlugFix.sh

sudo cp -f ALCHeadphoneStaticFix.sh /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCHeadphoneStaticFix.sh

sudo cp -f ALCRebootFromWinFix.sh /usr/local/bin
sudo chmod 755 /usr/local/bin/ALCRebootFromWinFix.sh


echo "Copying ALCPlugFix launcher."

sudo cp -f ALCPlugFix.plist /Library/LaunchAgents
sudo chmod 644 /Library/LaunchAgents/ALCPlugFix.plist


echo "Unloading any existing ALCPlugFix launcher (an error means it is not loaded)."

launchctl unload /Library/LaunchAgents/ALCPlugFix.plist



echo "Loading ALCPlugFix launcher."

launchctl load -w /Library/LaunchAgents/ALCPlugFix.plist


echo "ALCPlugFix launcher status: "
launchctl list | grep ALCPlugFix


echo "Installation finished."
exit 0
