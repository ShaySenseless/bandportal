Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :categories do
	  match '/wanted', to: 'posts#index_wanted', via: :get
	  match '/seeking', to: 'posts#index_seeking', via: :get
  end
  
  root 'home#index'
  match '/rules', to: 'static_pages#rules', via: :get
  match '/help', to: 'static_pages#help', via: :get
  match '/my_posts', to: 'posts#my_posts', via: :get
end