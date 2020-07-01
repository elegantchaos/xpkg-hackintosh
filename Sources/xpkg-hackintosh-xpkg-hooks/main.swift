import XPkgPackage

let links = [
    ["Scripts/mount-efi.sh"],
    ["Scripts/mount-oc.sh"],
    ["Scripts/aliases.sh", "~/.local/share/shell-hooks/interactive/hackintosh"]
]

let arguments = CommandLine.arguments
let package = InstalledPackage(fromCommandLine: arguments)
if let action = package.action(fromCommandLine: arguments) {
    try! package.performAction(fromCommandLine: CommandLine.arguments, links: links, commands: [])
}
