module Ecm::Videos
  class Category < ActiveRecord::Base
    # markup support
    include Models::MarkupConcern
    markup :description
    
    # acts as published
    include ActsAsPublished::ActiveRecord
    acts_as_published

    has_many :videos, -> { order(position: :asc) }

    validates :locale, :name, :markup_language, presence: true

    after_initialize :set_defaults, if: :new_record?

    def preview_image
      videos.first.try(:preview_image)
    end

    def videos_count
      videos.count
    end

    private

    def set_defaults
      self.markup_language = Configuration.default_markup_language
    end
  end
end
