Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :numbers
  resources :teams
  post 'teams/new', to: 'teams#multicreate'
  post 'delete_all', to: 'teams#delete_all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
