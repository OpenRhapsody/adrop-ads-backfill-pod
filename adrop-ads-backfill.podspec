#
# Be sure to run `pod lib lint AdropAds.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'adrop-ads-backfill'
  s.version          = '1.7.0-alpha.0'
  s.summary          = 'Adrop ads backfill'
  s.homepage         = 'https://adrop.io'

  s.author           = { 'Leo' => 'hc@adrop.io', 'Tochy' => 'tochy@adrop.io', 'dev' => 'dev@adrop.io' }
  s.license          = { :type => 'CUSTOM (https://adrop.io)' }
  s.swift_version    = '5.0'
  s.platform         = :ios

  s.source           = { :git => 'https://github.com/OpenRhapsody/adrop-ads-backfill-pod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'AdropAdsBackfill.xcframework'

  s.dependency 'adrop-ads', '1.7.0-alpha.0'
  s.dependency 'Google-Mobile-Ads-SDK', '~> 12.2.0'
  s.dependency 'GoogleMobileAdsMediationPangle'
  s.dependency 'GoogleMobileAdsMediationFacebook'
  s.dependency 'GoogleMobileAdsMediationUnity'
  s.dependency 'GoogleMobileAdsMediationInMobi'
  s.dependency 'GoogleMobileAdsMediationVungle'
  s.dependency 'GoogleMobileAdsMediationAppLovin'

end
