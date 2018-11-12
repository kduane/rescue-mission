Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  resources :users, :communications

  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end

  resources :answers, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
