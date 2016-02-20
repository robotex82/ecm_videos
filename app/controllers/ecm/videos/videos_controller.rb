module Ecm
  module Videos
    class VideosController < Configuration.base_controller.constantize
      include Controller::ResourceConcern
      include Controller::ResourceInflectionsConcern
      include Controller::ResourceUrlsConcern
      include Controller::RestActionsConcern

      helper ResourceRenderer::ViewHelper

      def self.resource_class
        Ecm::Videos::Video
      end

      private

      def load_scope
        resource_class.published
      end

      def collection_scope
        resource_class.published.all
      end
    end
  end
end
