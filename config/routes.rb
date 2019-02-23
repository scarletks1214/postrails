Rails.application.routes.draw do
  resources :audit_logs
  namespace :admin do
      resources :posts
      resources :users
      resources :blogs
      resources :admin_users

      root to: "posts#index"
    end
  resources :posts
  devise_for :users
  root to: 'static#home'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
