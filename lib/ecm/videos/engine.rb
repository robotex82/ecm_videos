module Ecm
  module Videos
    class Engine < ::Rails::Engine
      isolate_namespace Ecm::Videos

      config.eager_load_paths << root.join(*%w(app concerns))
    end
  end
end
