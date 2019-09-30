require 'spec_helper'

describe "Translation" do
  let(:app) do
    StripeI18n::Spec::FakeApp
  end

  context "when default locale is English" do
    let(:translation) do
      app.run lambda { I18n.t("stripe.errors.expired_card") } do |config|
        config.i18n.default_locale = :en
      end
    end

    it "is available" do
      expect(translation).to eq("The card has expired.")
    end
  end
end
