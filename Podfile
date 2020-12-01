require_relative '../rn-test/node_modules/react-native/scripts/react_native_pods'
require_relative '../rn-test/node_modules/react-native-unimodules/cocoapods.rb'
require_relative '../rn-test/node_modules/@react-native-community/cli-platform-ios/native_modules'

platform :ios, '10.0'

target 'RNTestConsumer' do
  use_unimodules!

  use_react_native!(:path => '../rn-test/node_modules/react-native')

  pod 'RNGestureHandler', :podspec => '../rn-test/node_modules/react-native-gesture-handler/RNGestureHandler.podspec'
  pod 'react-native-safe-area-context', :podspec => '../rn-test/node_modules/react-native-safe-area-context/react-native-safe-area-context.podspec'

  # Enables Flipper.
  #
  # Note that if you have use_frameworks! enabled, Flipper will not work and
  # you should disable these next few lines.
  use_flipper!
  post_install do |installer|
    flipper_post_install(installer)
  end
end