Rails.application.routes.draw do
  resources :members
  resources :alums
  resources :meetings
  resources :attendances
  root 'meetings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
