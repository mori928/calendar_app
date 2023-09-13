Rails.application.routes.draw do
  root 'reservations#index'
  resources :reservations
  
  Rails.application.routes.draw do
    resources :reservations
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
