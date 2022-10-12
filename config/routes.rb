Rails.application.routes.draw do
  resources :members
  resources :alums
  resources :meetings
  resources :attendances
<<<<<<< Updated upstream
  resources :meetings
  root 'meetings#index'
=======
  root 'attendances#index'
>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
