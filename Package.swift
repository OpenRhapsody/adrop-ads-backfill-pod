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
        .package(url: "https://github.com/OpenRhapsody/adrop-ads-pod.git", from: "1.7.3"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "12.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-user-messaging-platform.git", from: "3.1.0"),

        // AdMob Mediation Adapters
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-pangle.git", branch: "main"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-unity.git", branch: "main"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-inmobi.git", branch: "main"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-liftoffmonetize.git", branch: "main"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-applovin.git", branch: "main")
    ],
    targets: [
        .binaryTarget(
            name: "AdropAdsBackfill",
            path: "AdropAdsBackfill.xcframework"
        )
    ]
)
