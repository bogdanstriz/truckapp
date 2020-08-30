Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', 
    registrations: 'users/registrations'}
  get 'welcome/index'

  #RESTful routes
  resources :loads
  resources :accounts
  resources :trucks
  resources :trailers
  resources :units
  resources :repairs
  resources :transactions
  

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
