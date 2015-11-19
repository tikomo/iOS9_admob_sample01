# iOS9_admob_sample01

AdMob - Google Mobile SDK 7.5.2
iOS9.1
iPhone6 Plus

バーの幅が320だと小さい気がする。360, 400にしてみる...iPhone6Plusだからかな

AdMobのSDKはcocoapodsで

podfile

platform :ios, "9.0"
pod 'Google-Mobile-Ads-SDK', '~> 6.5.2'



Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ pod install
Analyzing dependencies

CocoaPods 0.39.0 is available.
To update use: `gem install cocoapods`

For more information see http://blog.cocoapods.org
and the CHANGELOG for this version http://git.io/BaH8pQ.

[!] Unable to satisfy the following requirements:

- `Google-Mobile-Ads-SDK (~> 6.5.2)` required by `Podfile`

Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ 

gem install cocoapods をやって見る

Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ gem install cocoapod
ERROR:  Could not find a valid gem 'cocoapod' (>= 0) in any repository
ERROR:  Possible alternatives: cocoapods, cockapoc, cocoanova, cocoa-xml, cocoadex
Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ gem install cocoapods
Fetching: nap-1.0.0.gem (100%)
ERROR:  While executing gem ... (Errno::EACCES)
    Permission denied @ rb_sysopen - /usr/local/lib/ruby/gems/2.1.0/cache/nap-1.0.0.gem
Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$

パーミッションだと...sudoつけてみる

Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ sudo gem install cocoapods
Password:
Fetching: nap-1.0.0.gem (100%)
Successfully installed nap-1.0.0
Fetching: thread_safe-0.3.5.gem (100%)
Successfully installed thread_safe-0.3.5
Fetching: minitest-5.8.3.gem (100%)
Successfully installed minitest-5.8.3
Fetching: tzinfo-1.2.2.gem (100%)
Successfully installed tzinfo-1.2.2
Fetching: i18n-0.7.0.gem (100%)
Successfully installed i18n-0.7.0
Fetching: activesupport-4.2.5.gem (100%)
Successfully installed activesupport-4.2.5
Fetching: molinillo-0.4.0.gem (100%)
Successfully installed molinillo-0.4.0
Fetching: cocoapods-trunk-0.6.4.gem (100%)
Successfully installed cocoapods-trunk-0.6.4
Fetching: cocoapods-try-0.5.1.gem (100%)
Successfully installed cocoapods-try-0.5.1
Fetching: cocoapods-stats-0.6.2.gem (100%)
Successfully installed cocoapods-stats-0.6.2
Fetching: cocoapods-search-0.1.0.gem (100%)
Successfully installed cocoapods-search-0.1.0
Fetching: cocoapods-plugins-0.4.2.gem (100%)
Successfully installed cocoapods-plugins-0.4.2
Fetching: cocoapods-downloader-0.9.3.gem (100%)
Successfully installed cocoapods-downloader-0.9.3
Fetching: claide-0.9.1.gem (100%)
Successfully installed claide-0.9.1
Fetching: xcodeproj-0.28.2.gem (100%)
Successfully installed xcodeproj-0.28.2
Fetching: cocoapods-core-0.39.0.gem (100%)
Successfully installed cocoapods-core-0.39.0
Fetching: cocoapods-0.39.0.gem (100%)
Successfully installed cocoapods-0.39.0
Parsing documentation for nap-1.0.0
Installing ri documentation for nap-1.0.0
Parsing documentation for thread_safe-0.3.5
Installing ri documentation for thread_safe-0.3.5
Parsing documentation for minitest-5.8.3
Installing ri documentation for minitest-5.8.3
Parsing documentation for tzinfo-1.2.2
Installing ri documentation for tzinfo-1.2.2
Parsing documentation for i18n-0.7.0
Installing ri documentation for i18n-0.7.0
Parsing documentation for activesupport-4.2.5
Installing ri documentation for activesupport-4.2.5
Parsing documentation for molinillo-0.4.0
Installing ri documentation for molinillo-0.4.0
Parsing documentation for cocoapods-trunk-0.6.4
Installing ri documentation for cocoapods-trunk-0.6.4
Parsing documentation for cocoapods-try-0.5.1
Installing ri documentation for cocoapods-try-0.5.1
Parsing documentation for cocoapods-stats-0.6.2
Installing ri documentation for cocoapods-stats-0.6.2
Parsing documentation for cocoapods-search-0.1.0
Installing ri documentation for cocoapods-search-0.1.0
Parsing documentation for cocoapods-plugins-0.4.2
Installing ri documentation for cocoapods-plugins-0.4.2
Parsing documentation for cocoapods-downloader-0.9.3
Installing ri documentation for cocoapods-downloader-0.9.3
Parsing documentation for claide-0.9.1
Installing ri documentation for claide-0.9.1
Parsing documentation for xcodeproj-0.28.2
Installing ri documentation for xcodeproj-0.28.2
Parsing documentation for cocoapods-core-0.39.0
Installing ri documentation for cocoapods-core-0.39.0
Parsing documentation for cocoapods-0.39.0
Installing ri documentation for cocoapods-0.39.0
Done installing documentation for nap, thread_safe, minitest, tzinfo, i18n, activesupport, molinillo, cocoapods-trunk, cocoapods-try, cocoapods-stats, cocoapods-search, cocoapods-plugins, cocoapods-downloader, claide, xcodeproj, cocoapods-core, cocoapods after 32 seconds
17 gems installed
Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ 


podfileにミスがあった


podfile

platform :ios, "9.0"
pod 'Google-Mobile-Ads-SDK', '~> 7.5.2'



Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ pod install
Updating local specs repositories
Analyzing dependencies
Downloading dependencies
Installing Google-Mobile-Ads-SDK (7.5.2)
Generating Pods project
Integrating client project

[!] Please close any current Xcode sessions and use `admobTest02_ios9.xcworkspace` for this project from now on.
Sending stats
Pod installation complete! There is 1 dependency from the Podfile and 1 total pod installed.
Komorita-no-MacBook-Air:admobTest02_ios9 tikomo$ 


