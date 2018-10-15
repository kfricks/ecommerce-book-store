Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "profile", to: "profile#show"
  get "profile/edit", to: "profile#edit"
  put "profile", to: "profile#update"
end
