// swift-tools-version:6.0

/**
 *  Identity
 *  Copyright (c) John Sundell 2019
 *  Licensed under the MIT license (see LICENSE file)
 */

import PackageDescription

let package = Package(
    name: "Identity",
    products: [
        .library(
            name: "Identity",
            targets: ["Identity"]
        ),
    ],
    targets: [
        .target(
            name: "Identity"),
        .testTarget(
            name: "IdentityTests",
            dependencies: ["Identity"]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets {
    target.swiftSettings = [
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
    ]
}
