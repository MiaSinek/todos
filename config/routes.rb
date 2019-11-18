Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks, only: [:index, :create] do
    resource :completion, only: [:create]
  end


  resource :session, only: [:new, :create]
end
