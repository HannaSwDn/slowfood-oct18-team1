Rails.application.routes.draw do
  devise_for :users 
  resources :dishes, only: [:index]
  root controller: :dishes, action: :index
end
