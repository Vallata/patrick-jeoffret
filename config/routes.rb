Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  root to: "pages#home"
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/thanks', to: 'pages#thanks'
  resources :items, only: %i[new create index edit update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
