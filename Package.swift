// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterVbDotnet",
    products: [
        .library(name: "TreeSitterVbDotnet", targets: ["TreeSitterVbDotnet"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterVbDotnet",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterVbDotnetTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterVbDotnet",
            ],
            path: "bindings/swift/TreeSitterVbDotnetTests"
        )
    ],
    cLanguageStandard: .c11
)
