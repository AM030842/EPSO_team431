Rails.application.routes.draw do
  resources :members
  resources :alums
  resources :meetings
  resources :attendances
  resources :members
  resources :logs
  resources :meetings
  root 'alumnis#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
