Rails.application.routes.draw do
resources :characters
resources :transformations, only: [:index, :show, :new, :edit, :create, :update]
resources :charactertransformations, only: [:index, :show, :new, :create]
get '/', to: 'application#home', as: 'home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
