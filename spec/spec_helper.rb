ENV["RAILS_ENV"] = "test"

require 'i18n-spec'
require 'support/fake_app'

I18n.enforce_available_locales = false

RSpec.configure do |config|
  config.mock_with :rspec
end
