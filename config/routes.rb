Rails.application.routes.draw do
  resources :videos
  devise_for :users
  root to: 'tops#index'
  resources :posts do
    resources :likes
  end
  resources :users
end
