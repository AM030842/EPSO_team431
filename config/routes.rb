Rails.application.routes.draw do
  get 'help/index'
  get 'profile/profile'
  resources :alums
  resources :meetings
  resources :members
  resources :attendances

  root to: 'dashboards#show'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
