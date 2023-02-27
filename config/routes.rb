Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root 'home#index'
=======
  root "home#index"
  resources :questions
>>>>>>> 0fe9c2a (added question table)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
