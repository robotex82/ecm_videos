require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Videos
    module Configuration
      def configure
        yield self
      end

      mattr_accessor(:markup_languages) { ['textile'] }
      mattr_accessor(:default_markup_language) { 'textile' }
      mattr_accessor(:base_controller) { 'FrontendController' }
      mattr_accessor(:paperclip_options) do
        Proc.new { {} }
      end
    end
  end
end
