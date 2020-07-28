Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    resources :garages do 
      resources :reservations, only: [:index, :show, :edit, :create, :update]
    end
    resources :reservations, only: :destroy# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
