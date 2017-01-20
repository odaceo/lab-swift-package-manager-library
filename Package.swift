import PackageDescription

let package = Package(
    name: "Uuid",
    dependencies: [
        .Package(url: "https://github.com/odaceo/lab-swift-package-manager-system-module.git", majorVersion: 1)
    ]
)
