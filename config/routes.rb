Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "todos#index"
  resources :todos, only: [:new, :create, :index] do 
    resource :completion, only: [:create, :destroy]
  end

  resource :session
end
