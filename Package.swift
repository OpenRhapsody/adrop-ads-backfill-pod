// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "adrop-ads-backfill",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AdropAdsBackfill",
            targets: ["AdropAdsBackfill"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/OpenRhapsody/adrop-ads-pod.git", "1.7.0"..<"1.8.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "12.2.0"..<"13.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AdropAdsBackfill",
            path: "AdropAdsBackfill.xcframework"
        )
    ]
)
