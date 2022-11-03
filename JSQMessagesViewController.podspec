Pod::Spec.new do |s|
    s.name = 'JSQMessagesViewController'
    s.version = '7.3.5'
    s.summary = 'A fork of JSQMessagesViewController'
    s.license = 'MIT'
    s.platform = :ios, '10.0'

    s.source = { :git => 'https://github.com/unlistedmobile/JSQMessagesViewController.git', :tag => s.version }
    s.source_files = 'JSQMessagesViewController/**/*.{h,m}'

    s.resources = ['JSQMessagesViewController/Assets/JSQMessagesAssets.bundle', 'JSQMessagesViewController/**/*.{xib}']

    s.frameworks = 'QuartzCore', 'CoreGraphics', 'CoreLocation', 'MapKit', 'AVFoundation'
    s.requires_arc = true
end
