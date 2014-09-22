Rails.application.routes.draw do

  devise_for :users
  root to: 'nonprofit#index'
  resources :nonprofits, :except => [:edit, :update] do
    resources :donations, :except => [:edit, :update, :delete]
  end
end
