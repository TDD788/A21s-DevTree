#!/system/bin/sh

ARCH=$(getprop ro.product.cpu.abi)

IS_INSTALL_NEXT_SLOT=$1

# Load utility functions
. /sbin/util_functions.sh

# shellcheck disable=SC2039
if [[ $IS_INSTALL_NEXT_SLOT == *"true"* ]]; then
  get_next_slot
  [ -z $SLOT ] && { >&2 echo "- can't determined current boot slot!"; exit 1; }
else
  get_current_slot
fi

find_boot_image

[ -e "$BOOTIMAGE" ] || { >&2 echo "- can't find boot.img!"; exit 1; }

true
