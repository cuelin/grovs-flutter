#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint grovs_flutter_plugin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'grovs_flutter_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  # Shared source location with Swift Package Manager (Package.swift). Keeps both
  # CocoaPods and SPM building from the same files.
  s.source_files = 'grovs_flutter_plugin/Sources/grovs_flutter_plugin/**/*.swift'
  s.resource_bundles = {
    'grovs_flutter_plugin_privacy' => ['grovs_flutter_plugin/Sources/grovs_flutter_plugin/PrivacyInfo.xcprivacy'],
  }
  s.dependency 'Flutter'
  s.dependency 'Grovs', '~> 2.3'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
