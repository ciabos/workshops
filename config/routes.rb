Rails.application.routes.draw do

  root 'products#index'
  get '/profile' => 'profile#show'
  resources :categories, only: [:create, :edit, :destroy] do
    resources :products, only: [:create, :edit, :destroy] do
      resources :reviews, only: [:create, :edit, :destroy]
    end
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
end
