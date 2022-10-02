Rails.application.routes.draw do

  root 'home#index'
  get 'home', to: 'home#index'

  devise_for :users
  resources :users do
    resources :appointments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
