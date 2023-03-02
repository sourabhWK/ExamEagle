Rails.application.routes.draw do
  get 'user', to: 'user#index'
  get 'admin', to: 'admin#index'
  devise_for :users


  # post '/questions/:id/answers/new', to: 'answers#create'


  root "home#index"

  resources :questions do 
    resources :answers
  end


  root "home#index"
  resources :questions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
