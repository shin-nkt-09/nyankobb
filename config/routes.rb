Rails.application.routes.draw do
root "tweets#index"
 devise_for :users
 namespace :tweets do
  resources :searches, only: :index
 end
 
 resources :tweets do
   resources :comments, only: :create
 end
 resources :users, only: :show
end
