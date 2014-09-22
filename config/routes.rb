Rails.application.routes.draw do

  devise_for :users
  root to: 'nonprofit#index'
  resources :nonprofit, :except => [:edit, :update] do
    resources :donation, :except => [:edit, :update, :delete]
  end
end
