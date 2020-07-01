sudo mkdir -p /Volumes/EFI-CLOVER
sudo diskutil mount -mountPoint /Volumes/EFI-CLOVER disk1s1

open /Volumes/EFI-CLOVER/EFI
open /Volumes/EFI-CLOVER/EFI/Clover/config.plist
cd /Volumes/EFI-CLOVER/EFI/Clover
if [[ "$(which fork)" != "" ]]
then
    fork
else
    stree
fi
