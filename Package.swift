// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "adrop-ads-backfill",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AdropAdsBackfill",
            targets: ["AdropAdsBackfillWrapper"]
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
            name: "AdropAdsBackfillBinary",
            path: "AdropAdsBackfill.xcframework"
        ),
        .target(
            name: "AdropAdsBackfillWrapper",
            dependencies: [
                "AdropAdsBackfillBinary",
                .product(name: "AdropAds", package: "adrop-ads-pod"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleUserMessagingPlatform", package: "swift-package-manager-google-user-messaging-platform"),
                .product(name: "PangleAdapterTarget", package: "googleads-mobile-ios-mediation-pangle"),
                .product(name: "UnityAdapterTarget", package: "googleads-mobile-ios-mediation-unity"),
                .product(name: "InMobiAdapterTarget", package: "googleads-mobile-ios-mediation-inmobi"),
                .product(name: "LiftoffMonetizeAdapterTarget", package: "googleads-mobile-ios-mediation-liftoffmonetize"),
                .product(name: "AppLovinAdapterTarget", package: "googleads-mobile-ios-mediation-applovin")
            ]
        )
    ]
)
