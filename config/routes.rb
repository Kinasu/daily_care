Rails.application.routes.draw do
  resources :pets
  resources :tasks
  resource :session, only: [:new, :create, :destroy]

  root 'tasks#index' #задачи список

end
