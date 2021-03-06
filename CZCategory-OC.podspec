#
#  Be sure to run `pod spec lint CZCategory-OC.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  
  spec.name         = "CZCategory-OC"
  spec.version      = "0.0.6"
  spec.platform     = :ios, "10.0"
  spec.summary      = "iOS OC 开发常用分类"
# 是否开启ARC
  spec.requires_arc = true


#  spec.description  = <<-DESC
 #                  DESC

  spec.homepage     = "https://github.com/JQZhangC/CZCategory-OC"

  #
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "CZ" => "cooper_jx@126.com" }
 

  spec.source       = { :git => "https://github.com/JQZhangC/CZCategory-OC.git", :tag => "#{spec.version}" }


  spec.source_files  = "Category", "Category/*.h"

  spec.subspec 'UIColor' do |ss|
    ss.source_files = 'Category/UIColor/*.{h,m}', 'Category/UIColor/*.h'
  end

  spec.subspec 'NSString' do |ss|
    ss.source_files = 'Category/NSString/*.{h,m}', 'Category/NSString/*.h'
  end

  spec.subspec 'NSNumber' do |ss|
    ss.source_files = 'Category/NSNumber/*.{h,m}', 'Category/NSNumber/*.h'
  end

  spec.subspec 'NSDate' do |ss|
    ss.source_files = 'Category/NSDate/*.{h,m}', 'Category/NSDate/*.h'
  end

  spec.subspec 'UIImage' do |ss|
    ss.source_files = 'Category/UIImage/*.{h,m}', 'Category/UIImage/*.h'
  end


  spec.ios.frameworks = 'Foundation', 'UIKit'
  
  # spec.subspec 'Image' do |ss|
  #   ss.source_files = 'Category/NSDate/*.{h,m}'
  # end

end
