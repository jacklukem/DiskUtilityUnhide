# DiskUtilityUnhide
to show all hidden EFIs and any APFS subvolumes

This tool adds a kind of debug menu that from HighSierra was removed by apple, is allows to easily handle and manage EFI but mainly hidden APFS volumes through diskutility.

When using this tool from 10.15.4 + requires to set in nvram boot-args "amfi_get_out_of_my_way=1" (it's also advisable to set "csrutil disable")

if you are using a patched unsupported APFS macOS, then these two features are already applied.

based on ASentientBot launcher: https://forums.macrumors.com/threads/macos-10-15-catalina-on-unsupported-macs.2183772/page-319?post=28161280#post-28161280

modified to work on Mojave and HighSierra

it should work till Monterey and maybe later.
