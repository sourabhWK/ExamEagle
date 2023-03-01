Rails.application.routes.draw do
  get 'option/show'
  get 'option/create'
  get 'option/new'
  get 'option/destroy'
  devise_for :users
  root "home#index"
  resources :questions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
