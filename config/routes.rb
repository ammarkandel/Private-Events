Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :events do
    member do
      get 'enrollment'
      get 'cancel_enrollment'
    end
  end
  resources :events
  root 'events#index'
end
