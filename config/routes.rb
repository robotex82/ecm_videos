Ecm::Videos::Engine.routes.draw do
  localized do
    scope :ecm_videos_engine do
      resources :categories, only: [:index, :show]
      resources :videos, only: [:index, :show]

      root to: 'categories#index'
    end
  end
end
