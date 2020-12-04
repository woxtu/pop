// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "pop",
    platforms: [
        .iOS(.v8),
        .macOS("10.8"),
        .tvOS(.v9),
    ],
    products: [
        .library(
            name: "pop",
            targets: ["pop"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "pop",
            dependencies: [],
            path: "pop",
            exclude: [
                "pop-ios-Info.plist",
                "pop-osx-Info.plist",
                "pop-tvos-Info.plist",
            ],
            cxxSettings: [
                .headerSearchPath("WebCore"),
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx11
)
