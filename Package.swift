// swift-tools-version:5.8
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
        .package(url: "https://github.com/OpenRhapsody/adrop-ads-pod.git", from: "1.9.1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "12.2.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-user-messaging-platform.git", from: "3.1.0"),

        // AdMob Mediation Adapters
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-pangle.git", exact: "7.6.600"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-unity.git", exact: "4.16.500"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-liftoffmonetize.git", exact: "7.6.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-applovin.git", exact: "13.4.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-ironsource.git", exact: "8.10.0"),
        .package(url: "https://github.com/googleads/googleads-mobile-ios-mediation-inmobi.git", exact: "10.8.600")
    ],
    targets: [
        .binaryTarget(
            name: "AdropAdsBackfill",
            path: "AdropAdsBackfill.xcframework"
        ),
        .target(
            name: "AdropAdsBackfillWrapper",
            dependencies: [
                "AdropAdsBackfill",
                .product(name: "AdropAds", package: "adrop-ads-pod"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .product(name: "GoogleUserMessagingPlatform", package: "swift-package-manager-google-user-messaging-platform"),
                .product(name: "PangleAdapterTarget", package: "googleads-mobile-ios-mediation-pangle"),
                .product(name: "UnityAdapterTarget", package: "googleads-mobile-ios-mediation-unity"),
                .product(name: "LiftoffMonetizeAdapterTarget", package: "googleads-mobile-ios-mediation-liftoffmonetize"),
                .product(name: "AppLovinAdapterTarget", package: "googleads-mobile-ios-mediation-applovin"),
                .product(name: "IronSourceAdapterTarget", package: "googleads-mobile-ios-mediation-ironsource"),
                .product(name: "InMobiAdapterTarget", package: "googleads-mobile-ios-mediation-inmobi")
            ]
        )
    ]
)
