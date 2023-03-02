Rails.application.routes.draw do
  get 'option/index'
  get 'option/show'
  get 'option/create'
  get 'option/new'
  get 'option/destroy'
  devise_for :users


  # post '/questions/:id/answers/new', to: 'answers#create'


  root "home#index"

  resources :questions do 
    resources :answers
  end


  
  resources :questions

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
