Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
      #API's
      get 'json', to: 'home#json'
      resources :cars
      resources :articles
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
      get "index", to: 'devise/sessions#new'
      get "panel", to: 'devise/sessions#new'
    end
    resources :cars
    resources :tires
  end
end
