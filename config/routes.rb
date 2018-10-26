require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get     "profile",      to: "profile#show"
  put     "profile",      to: "profile#update"
  patch   "profile",      to: "profile#update"
  get     "profile/edit", to: "profile#edit"

  get     "styleguide",   to: "style_guide#styleguide"

  resources :books
  resources :authors, only: [:index, :show]
 # resources :books, only: :show do
 # resources :books do
  resources :books, only: [:show] do
    resources :purchases, only: [:new, :create, :show]
  end

  get "/purchases", to: "purchases#index"

  namespace :admin do

    mount Sidekiq::Web =.> "/sidekiq"

    resources :books
  end
end
