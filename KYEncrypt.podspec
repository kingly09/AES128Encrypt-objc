#
#  Be sure to run `pod spec lint KYEncrypt.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
s.name         = "KYEncrypt"
s.version      = "0.0.2"
s.summary      = "KYEncrypt 是一个加解密类库包括AES128,AES256,Base64,Md5等加密算法类库."

s.homepage     = "https://github.com/kingly09/AES128Encrypt-objc"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "kingly" => "libintm@163.com" }
s.platform     = :ios, "7.0"
s.source       = { :git => "https://github.com/kingly09/AES128Encrypt-objc.git", :tag => s.version.to_s }
s.social_media_url   = "https://github.com/kingly09"
s.source_files = 'KYEncrypt/**/*'
s.framework    = "UIKit"
s.requires_arc = true



end
