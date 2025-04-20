// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftSDLWrapper",
    products: [
        .library(
            name: "SwiftSDLWrapper",
            targets: ["SDLWrapper"]
        ),
    ],
    dependencies: [],
    targets: [
        .systemLibrary(
            name: "CSDL2",
            pkgConfig: "sdl2",
            providers: [
                .brew(["sdl2"]),
                .apt(["libsdl2-dev"])
            ]
        ),
        .target(
            name: "SDLWrapper",
            dependencies: ["CSDL2"]
        )
    ]
)
