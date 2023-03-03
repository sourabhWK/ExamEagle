Rails.application.routes.draw do
  get 'user', to: 'user#index'
  resources :admin, only: [:index, :show]
  devise_for :users

  root "home#index"

  resources :questions do 
    resources :options
  end

  resources :test_questions
  resources :topic
end
