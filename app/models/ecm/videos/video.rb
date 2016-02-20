module Ecm::Videos
  class Video < ActiveRecord::Base
    # markup support
    include Models::MarkupConcern
    markup :description

    # acts as published
    include ActsAsPublished::ActiveRecord
    acts_as_published

    # acts as list
    acts_as_list scope: :category
    default_scope { order(position: :asc) }

    belongs_to :category

    has_attached_file :clip, Configuration.paperclip_options.call(self)

    validates :clip, attachment_presence: true
    validates_attachment_content_type :clip, content_type: /\Avideo\/.*\Z/
    validates :category, :name, :markup_language, presence: true

    after_initialize :set_defaults, if: :new_record?

    def preview_image
      clip
    end

    private

    def set_defaults
      self.markup_language = Configuration.default_markup_language
    end
  end
end
