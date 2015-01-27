Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :categories
  
  root 'home#index'
  match '/rules', to: 'static_pages#rules', via: :get
  match '/help', to: 'static_pages#help', via: :get
	match '/my_posts', to: 'posts#my_posts', via: :get
end