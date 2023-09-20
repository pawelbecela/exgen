Rails.application.routes.draw do
  resources :exercises, only: [:new, :create, :index, :show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'exercises#new'
  
end
