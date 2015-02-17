ENV["RAILS_ENV"] = "test"

require 'i18n-spec'

RSpec.configure do |config|
  config.mock_with :rspec
end
