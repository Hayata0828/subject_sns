Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#top'
  get 'tweets/index' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets/create' => 'tweets#create', as: :tweets
  get 'tweet/:id/edit' => 'tweets#edit', as: :tweet_edit
  patch 'tweet/:id/update' => 'tweets#update', as: :tweet
  delete 'tweet/:id/destroy' => 'tweets#destroy'
end
