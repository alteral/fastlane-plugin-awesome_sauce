require 'fastlane/action'
require_relative '../helper/awesome_sauce_helper'

module Fastlane
  module Actions
    class MinusAction < Action
      def self.run(params)
        Helper::AwesomeSauceHelper.minus(
          x: params[:x],
          y: params[:y]
        )
      end

      def self.description
        "Subtracts one number from another"
      end

      def self.authors
        ["alteral"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :x,
            description: "The number from which to subtract",
            optional: false,
            is_string: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :y,
            description: "The subtracted number",
            optional: false,
            is_string: false
          )
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
