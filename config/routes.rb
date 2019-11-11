Rails.application.routes.draw do


  namspace :api do
   resources :users
   resources :games
   resources :reservations
   resources :reviews
   resources :genres
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
