Rails.application.routes.draw do
  get 'items/new'
  devise_for :users, path_names: {
    sign_in: 'admin'
  }
  root to: "pages#home"
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/thanks', to: 'pages#thanks'
  resources :items, only: %i[new show create index edit update destroy]
  # get '/test', to: 'pages#test'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
