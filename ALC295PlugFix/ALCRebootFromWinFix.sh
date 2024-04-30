#!/bin/bash

# Fix for no sound from internal speakers when rebooting from Windows

/usr/local/bin/hda-verb 0x20 SET_COEF_INDEX 0x10
/usr/local/bin/hda-verb 0x20 SET_PROC_COEF 0x0120

/usr/local/bin/hda-verb 0x20 SET_COEF_INDEX 0x0d
/usr/local/bin/hda-verb 0x20 SET_PROC_COEF 0xa023


# Fix for no mic and headphone jack switching when rebooting from Windows

/usr/local/bin/hda-verb 0x20 SET_COEF_INDEX 0x45
/usr/local/bin/hda-verb 0x20 SET_PROC_COEF 0x5289

/usr/local/bin/hda-verb 0x20 SET_COEF_INDEX 0x46
/usr/local/bin/hda-verb 0x20 SET_PROC_COEF 0x0004

