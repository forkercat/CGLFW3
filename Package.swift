// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CGLFW3",
    
    products: [
        .library(name: "CGLFW3", targets: ["CGLFW3"]),
    ],
    
    targets: [
        .systemLibrary(
            name: "CGLFW3",
            pkgConfig: "glfw3",
            providers: [
                .brew(["glfw"]),
                .apt(["libglfw3"])
            ]
        ),
    ]
)
