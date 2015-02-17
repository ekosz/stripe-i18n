require 'spec_helper'

Dir.glob('rails/locale/*.yml') do |locale_file|
  describe "a stripe-i18n #{locale_file} locale file" do
    it_behaves_like 'a valid locale file', locale_file
  end
end
