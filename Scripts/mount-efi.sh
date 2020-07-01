sudo diskutil mount disk1s1
open /Volumes/EFI/EFI
open /Volumes/EFI/EFI/config.plist
cd /Volumes/EFI/EFI/Clover
if [[ "$(which fork)" != "" ]]
then
    fork
else
    stree
fi
