# DiskUtilityUnhide
to show all hidden EFIs and any APFS subvolumes

This tool adds an useful feature of debug menu that from HighSierra was removed by apple, it allows to easily handle and manage EFI but mainly hidden APFS volumes through diskutility tree structure, avoiding the zsh or bash diskutil to identify the correct hidden APFS volume when there are multiple APFS macOS installations.

When using this tool from 10.15.4 + requires to set in nvram boot-args "amfi_get_out_of_my_way=1" (it's also advisable to set "csrutil disable" if you need to modify the Preboot)

if you are using a patched unsupported APFS macOS, then these two features are already applied.

based on ASentientBot launcher: https://forums.macrumors.com/threads/macos-10-15-catalina-on-unsupported-macs.2183772/page-319?post=28161280#post-28161280

dylib modified to work on Mojave and HighSierra

it works till Monterey and maybe later.

![DiskUtilityUnhide](https://user-images.githubusercontent.com/63143548/124458040-d09c5b80-dd8c-11eb-895e-bd66293e453b.png)
