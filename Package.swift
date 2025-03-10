// swift-tools-version: 5.8
//===----------------------------------------------------------------------===//
//
// This source file is part of the SwiftOpenAPIGenerator open source project
//
// Copyright (c) 2023 Apple Inc. and the SwiftOpenAPIGenerator project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of SwiftOpenAPIGenerator project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//
import PackageDescription

let package = Package(
    name: "swift-openapi-runtime",
    platforms: [
        .macOS(.v13), .iOS(.v16), .tvOS(.v16), .watchOS(.v9),
    ],
    products: [
        .library(
            name: "OpenAPIRuntime",
            targets: ["OpenAPIRuntime"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "OpenAPIRuntime",
            dependencies: []
        ),
        .testTarget(
            name: "OpenAPIRuntimeTests",
            dependencies: ["OpenAPIRuntime"]
        ),
    ]
)
