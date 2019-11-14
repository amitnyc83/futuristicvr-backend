Rails.application.routes.draw do


   resources :users
   resources :games
   resources :reservations
   resources :reviews
   resources :genres


   post '/current_user', to:"auth#show"
   post 'login', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
