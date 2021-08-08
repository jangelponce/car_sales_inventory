Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  namespace :admin do 
    resources :dealerships
    resources :cars
  end

  namespace :user do
    resources :cars, only: %i[ index show ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
