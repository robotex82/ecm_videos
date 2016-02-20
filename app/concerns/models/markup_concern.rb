require_dependency 'RedCloth'

module Models::MarkupConcern
  extend ActiveSupport::Concern

  class_methods do
    def markup(*args)
      args.extract_options!
      markup_attributes = *args
      markup_attributes.each do |attr|
        define_method attr do |format = :default|
          value = read_attribute(attr)
          case format
          when :html
            return unless value
            RedCloth.new(value).to_html.html_safe
          else
            value
          end
        end
      end
    end
  end
end
