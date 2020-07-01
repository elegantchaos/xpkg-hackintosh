sudo mkdir -p /Volumes/EFI-OC
sudo diskutil mount -mountPoint /Volumes/EFI-OC disk3s1
open /Volumes/EFI-OC/EFI
open /Volumes/EFI-OC/EFI/config.plist
cd /Volumes/EFI-OC/EFI
if [[ "$(which fork)" != "" ]]
then
    fork
else
    stree
fi
