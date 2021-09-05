require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class AwesomeSauceHelper
      def self.minus(x:, y:)
        x - y
      end

      def self.plus(x:, y:)
        x + y
      end
    end
  end
end
