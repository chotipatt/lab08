Rails.application.routes.draw do
  get 'main/login'
  post 'main/create'
  get 'main/destroy'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
