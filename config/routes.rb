Rails.application.routes.draw do
  get 'user', to: 'user#index'
  get 'admin', to: 'admin#index'
  devise_for :users

  root "home#index"

  resources :questions do 
    resources :answers
  end

end
