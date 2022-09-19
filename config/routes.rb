Rails.application.routes.draw do
  resources :members
  resources :logs
  resources :meetings
  resources :alumnis
  root 'alumnis#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
