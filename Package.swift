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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "12.2.0"..<"13.0.0"),

        // AdMob Mediation Adapters
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-pangle.git", from: "6.0.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-meta.git", from: "6.0.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-unity.git", from: "4.0.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-inmobi.git", from: "10.0.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-liftoffmonetize.git", from: "7.0.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-applovin.git", from: "13.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "AdropAdsBackfill",
            path: "AdropAdsBackfill.xcframework"
        )
    ]
)
