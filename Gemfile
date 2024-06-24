ruby '3.2.2'
source 'https://rubygems.org'

gem 'rake'

# standard WWTK fastlane requirements
gem 'fastlane', '>= 2.213.0'
gem 'u3d', '~> 1.3.3'
gem 'upm_support', git: 'git@bitbucket.org:WeWantToKnow/upm_support.git'
#gem 'pry'
# extra actions
gem 'ruby_apk'
gem 'rubyzip', '>= 1.0.0'
gem 'zip-zip'
gem 'terminal-notifier'
gem 'aws-sdk-s3', '~> 1'

# for some scripts on some projects, e.g. crowdin
gem 'java-properties'

gem 'cocoapods', '~> 1.12.1'
# Cocoapods has an issue with activesupport past 7.0.8, see https://stackoverflow.com/questions/77236339/after-updating-cocoapods-to-1-13-0-it-throws-error
# https://github.com/CocoaPods/CocoaPods/issues/12080
gem 'activesupport', '~> 7.0', '<= 7.0.8' 


plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
