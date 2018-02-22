# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'swift-kata' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Swifter'
  pod 'Alamofire'
  pod 'XCTest-Gherkin'
  # Pods for swift-kata

  target 'swift-kataTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'swift-kataUITests' do
    inherit! :search_paths
    # Pods for testing
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'Swifter'
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.2'
      end
    end
  end
end

