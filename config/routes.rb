Rails.application.routes.draw do

  root 'products#index'
  get '/profile' => 'profile#show'
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
end
