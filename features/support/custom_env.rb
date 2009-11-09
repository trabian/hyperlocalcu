require 'factory_girl'

require File.join(File.dirname(__FILE__), 'factories.rb')

Pickle.configure do |config|
  config.adapters = [:factory_girl]
  config.map 'I', 'myself', 'me', 'my', :to => 'user: "me"'
end

Before do
  [Member].each do |model|
    model.delete_all
  end
end
