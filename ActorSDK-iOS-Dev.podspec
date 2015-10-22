Pod::Spec.new do |s|
  s.name         		= "ActorSDK-iOS-Dev"
  s.version      		= "0.0.27"
  s.summary      		= "Actor SDK for intergration Actor Messaging to your apps"
  s.homepage        = "https://actor.im/"
  s.license         = { :type => 'MIT', :file => 'LICENSE' }
  s.author       		= { "Actor LLC" => "steve@actor.im" }
  s.source          = { :git => "https://github.com/actorapp/ActorSDK-iOS-Dev.git", :tag => "v#{s.version}" }

  s.platform     		= :ios, "8.0"
  s.requires_arc 		= true

  # Core
  s.dependency 'J2ObjC-Framework'
  s.dependency 'RegexKitLite'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'zipzap'

  # UI
  s.dependency 'VBFPopFlatButton'
  s.dependency 'MBProgressHUD'
  s.dependency 'PSTAlertController'
  s.dependency 'DZNPhotoPickerController'
  s.dependency 'SZTextView'
  s.dependency 'SlackTextViewController'
  s.dependency 'NYTPhotoViewer'
  s.dependency 'RSKImageCropper'

  s.dependency 'BlockAlertsAnd-ActionSheets'
  s.dependency 'RMUniversalAlert'
  s.dependency 'PSTAlertController'
  s.dependency 'TTTAttributedLabel'
  s.dependency 'M13ProgressSuite'
  s.dependency 'JDStatusBarNotification'

  s.frameworks = "UIKit", "CoreFoundation", "Foundation", "j2objc"

  s.subspec 'ActorCore' do |ss|
    ss.dependency 'RestKit/ObjectMapping'
    ss.dependency 'RestKit/Network'
    ss.dependency 'RestKit/CoreData'
  end

  # Sources
  # s.preserve_paths = "ActorCore"
  # s.source_files = "ActorCore/**/*"
  # s.source_files = "ActorCore/**/*", "ActorSDK/**/*"
  # s.private_header_files = "**/*-Private.h"
  # s.resources = "Resources/**/*"
end
