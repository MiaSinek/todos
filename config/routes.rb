Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks, only: [:index, :create]

  resource :session, only: [:new, :create]
end
