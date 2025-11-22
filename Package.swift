// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SimpleCalc",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "SimpleCalcLib",
            targets: ["SimpleCalcLib"]),
    ],
    targets: [
        .target(
            name: "SimpleCalcLib",
            path: "SimpleCalc",
            exclude: ["SimpleCalcApp.swift", "ContentView.swift"],
            sources: ["Calculator.swift"]),
        .testTarget(
            name: "SimpleCalcTests",
            dependencies: ["SimpleCalcLib"],
            path: "SimpleCalcTests"),
    ]
)
