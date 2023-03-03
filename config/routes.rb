Rails.application.routes.draw do
  get 'user', to: 'user#index'
  resources :admin, only: [:index, :show]
  devise_for :users

  root "home#index"

  resources :questions do 
    resources :answers
  end

end
