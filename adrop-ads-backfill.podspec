#
# Be sure to run `pod lib lint AdropAds.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'adrop-ads-backfill'
  s.version          = '1.12.0'
  s.summary          = 'Adrop ads backfill'
  s.homepage         = 'https://adrop.io'

  s.author           = { 'hc' => 'hc@adrop.io', 'Leo' => 'leo@openrhapsody.com', 'Tochy' => 'tochy@adrop.io', 'dev' => 'dev@adrop.io' }
  s.license          = { :type => 'CUSTOM (https://adrop.io)' }
  s.swift_version    = '5.0'
  s.platform         = :ios

  s.source           = { :git => 'https://github.com/OpenRhapsody/adrop-ads-backfill-pod.git', :tag => s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.ios.vendored_frameworks = 'AdropAdsBackfill.xcframework'

  s.dependency 'adrop-ads', '~> 1.12.0'
  s.dependency 'Google-Mobile-Ads-SDK', '~> 12.2'
  s.dependency 'GoogleUserMessagingPlatform', '~> 3.1'
  s.dependency 'GoogleMobileAdsMediationPangle', '7.8.5.8.0'
  s.dependency 'GoogleMobileAdsMediationUnity', '4.16.5.0'
  s.dependency 'GoogleMobileAdsMediationInMobi', '10.8.6.0'
  s.dependency 'GoogleMobileAdsMediationVungle', '7.6.3.1'
  s.dependency 'GoogleMobileAdsMediationAppLovin', '13.4.0.0'
  s.dependency 'GoogleMobileAdsMediationIronSource', '9.2.0.0.1'
  
  s.user_target_xcconfig = { 
    'OTHER_LDFLAGS' => '$(inherited) -ObjC -Wl,-export_dynamic',
    'STRIP_INSTALLED_PRODUCT' => 'NO'
  }

  s.pod_target_xcconfig = { 
    'STRIP_STYLE' => 'non-global',
    'STRIP_INSTALLED_PRODUCT' => 'NO'
  }
end
