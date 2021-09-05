require 'fastlane/action'
require_relative '../helper/awesome_sauce_helper'

module Fastlane
  module Actions
    class PlusAction < Action
      def self.run(params)
        Helper::AwesomeSauceHelper.plus(
          x: params[:x],
          y: params[:y]
        )
      end

      def self.description
        "Adds one number to another"
      end

      def self.authors
        ["alteral"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :x,
            description: "The number to which to add",
            optional: false,
            is_string: false
          ),
          FastlaneCore::ConfigItem.new(
            key: :y,
            description: "The number to be added",
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
