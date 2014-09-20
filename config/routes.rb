Rails.application.routes.draw do

  devise_for :users
  root to: 'nonprofit#index'
  resources :nonprofit, :except => [:edit, :update]
end
