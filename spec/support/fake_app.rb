require 'spork'
require 'socket'

module StripeI18n
  module Spec
    module FakeApp
      def self.run(*tests)
        forker = Spork::Forker.new do
          require 'stripe-i18n'
          require 'action_controller/railtie'

          app = Class.new(Rails::Application)
          app.config.active_support.deprecation = :log
          app.config.eager_load = false

          yield(app.config) if block_given?
          app.initialize!

          results = tests.map(&:call)
          results.size == 1 ? results.first : results
        end

        forker.result
      end
    end
  end
end
