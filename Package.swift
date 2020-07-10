// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tokamak-example",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .executable(
            name: "tokamak-example",
            targets: ["tokamak-example"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/swiftwasm/Tokamak.git", .revision("b9ade79")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "tokamak-example",
            dependencies: [
                .product(name: "TokamakDOM", package: "Tokamak")
            ]
        ),
        .testTarget(
            name: "tokamak-exampleTests",
            dependencies: ["tokamak-example"]
        ),
    ]
)
