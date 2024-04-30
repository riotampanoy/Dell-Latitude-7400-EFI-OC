#!/bin/bash


# Fixing issues when rebooting from Windows

/usr/local/bin/ALCRebootFromWinFix.sh


# Headphone static fix

/usr/local/bin/ALCHeadphoneStaticFix.sh


# Headphone jack plug/unplug fix

/usr/local/bin/hda-verb 0x19 SET_PIN_WIDGET_CONTROL 0x24
/usr/local/bin/hda-verb  0x21 SET_UNSOLICITED_ENABLE 0x83









