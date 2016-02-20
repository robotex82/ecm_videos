Ecm::Videos::Engine.routes.draw do
  resources :categories, only: [:index, :show]
  resources :videos, only: [:index, :show]

  root to: 'categories#index'
end
