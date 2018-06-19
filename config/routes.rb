Rails.application.routes.draw do
  resources :moves
  mount ActionCable.server => '/cable'
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
