Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get '/user/:id', to: 'users#profile', as: :user
  resources :users, only: :index
  resources :events do
    member do
      get 'enrollment'
      get 'cancel_enrollment'
    end
  end
  resources :events, only: [:edit, :show, :index, :new, :create]
  root 'events#index'
end
