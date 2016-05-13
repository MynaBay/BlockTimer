#
# Be sure to run `pod lib lint BlockTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "BlockTimer"
    s.version          = "0.2.0"
    s.summary          = "BlockTimer is an NSTimer wrapper that executes a code block"

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    s.description      = <<-DESC
                            BlockTimer is an NSTimer wrapper that executes a code block instead of requiring a selector.
                       DESC

    s.homepage         = "https://github.com/MynaBay/BlockTimer"
    # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
    s.license          = 'MIT'
    s.author           = { "Kevin Snow" => "kevin@mynabay.com" }
    s.source           = { :git => "https://github.com/MynaBay/BlockTimer.git", :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/MynaBay'

    s.platform = :ios, '8.0'
    s.platform = :osx, '10.7'
    s.requires_arc = true

    s.source_files = 'Pod/Classes/**/*'

    s.public_header_files = 'Pod/Classes/**/*.h'

end
