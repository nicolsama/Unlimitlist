Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#root'

    namespace :api, defaults: {format: :json} do 
      resources :nodes, only: [:index, :show, :create, :update, :destroy] do 
        resources :stars, only: [:create]
      end
      resources :users, only: [:create]
      resources :stars, only: [:destroy]
      resource :session, only: [:create, :destroy]

    end

    resources :users, only: [:show, :index]
end
