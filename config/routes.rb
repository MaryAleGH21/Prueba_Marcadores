Rails.application.routes.draw do
  resources :bookmarks
  resources :kinds
  resources :categories
  root 'home#index'
  get 'categories/:id/api', to: 'categories#api', as: 'api'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
