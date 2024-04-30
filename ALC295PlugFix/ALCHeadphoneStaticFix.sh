#!/bin/bash


# Headphone Static Fix

/usr/local/bin/hda-verb 0x20 SET_COEF_INDEX 0x67
/usr/local/bin/hda-verb 0x20 SET_PROC_COEF 0x3000


