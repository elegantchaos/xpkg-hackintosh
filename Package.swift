// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "xpkg-hackintosh",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "xpkg-hackintosh-xpkg-hooks", targets: ["xpkg-hackintosh-xpkg-hooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XPkgPackage", from:"1.0.5"),
    ],
    targets: [
        .target(
            name: "xpkg-hackintosh-xpkg-hooks",
            dependencies: ["XPkgPackage"]),
    ]
)
