#!/bin/bash
FDEVICE="ruan"

aera_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      AERA_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && AERA_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$AERA_BUILD_DEVICE" ]; then
   aera_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$AERA_BUILD_DEVICE" = "$FDEVICE" ]; then
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true
	export AERA_SETTINGS_ROOT_DIRECTORY=/data/recovery
	export AERA_MISCELLANEOUS_ROOT_DIRECTORY=/sdcard
	export TARGET_DEVICE_ALT="ruan"
	export AERA_TARGET_DEVICES="$TARGET_DEVICE_ALT"
fi
