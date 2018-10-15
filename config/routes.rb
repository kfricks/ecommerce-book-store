Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get     "profile",      to: "profile#show"
  put     "profile",      to: "profile#update"
  patch   "profile",      to: "profile#update"
  get     "profile/edit", to: "profile#edit"
end