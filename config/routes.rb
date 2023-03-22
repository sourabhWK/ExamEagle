Rails.application.routes.draw do
  get 'user', to: 'user#index'
  resources :admin, only: [:index, :show]
  devise_for :users 
 

  root "home#index"

  resources :questions do 
    resources :options
  end

  resources :test_questions do
    resources :question_bodies
  end
  get '/test_questions/:id/start_test', to: 'test_questions#start_test', as: 'start_test'



  # resources :languages do
  #   post 'create_ajax', on: :collection
  # end

  resources :question_bodies do
    resources :options 
  end

  resources :results do
    post 'submit_option', on: :collection
  end

  
end
