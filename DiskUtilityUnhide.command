#!/bin/sh
#!/bin/bash
# simple Bash Menu Script by jackluke based on ASentientBot DiskUtilityAllRoles.dylib


printf '\e[92m;%s\a' "$color"

printf "$'\e[40m'DiskUtilityUnhide by jackluke based on ASentientBot DiskUtilityAllRoles tool"

printf "\n\n\n"

clear && printf '\e[3J'
echo "\n\nWelcome to DiskUtilityUnhide (based on ASentientBot DiskUtilityAllRoles), it requires amfi library validation disabled, on any macOS without DiskUtility debug feature, it should show all devices as tree structure, unhiding any APFS or EFI or chflags hidden volumes to easily handle them without using zsh or bash"
defaults write com.apple.DiskUtility SidebarShowAllDevices 1
cd "$(dirname "$0")"
export DYLD_INSERT_LIBRARIES="DiskUtilityAllRoles.dylib"
if [ -e /System/Applications/ ]
then
echo "\nDetected Catalina or later"
echo "\n\nWhile using DiskUtility keep active this window otherwise the unhidden volumes return its defaults apple values\n\nDon't close yet this window, when done you can use CMD+Q\n\n"
/System/Applications/Utilities/Disk\ Utility.app/Contents/MacOS/Disk\ Utility
else
echo "\nDetected Mojave or earlier"
echo "\n\nWhile using DiskUtility keep active this window otherwise the unhidden volumes return its defaults apple values\n\nDon't close yet this window, when done you can use CMD+Q\n\n"
/Applications/Utilities/Disk\ Utility.app/Contents/MacOS/Disk\ Utility
fi