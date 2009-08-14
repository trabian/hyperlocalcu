# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  config.gem 'haml-edge', :version => '>= 2.1.21', :lib => 'haml'
  config.gem 'chriseppstein-compass', :version => '>= 0.6.13', :lib => 'compass'

  config.time_zone = 'UTC'

end