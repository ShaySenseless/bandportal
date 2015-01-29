Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :users do
  match '/profile', to: 'users#profile', via: :get
  end
  resources :categories do
	  match '/wanted', to: 'posts#index_wanted', via: :get
	  match '/seeking', to: 'posts#index_seeking', via: :get
  end
  
  root 'home#index'
  match '/rules', to: 'static_pages#rules', via: :get
  match '/help', to: 'static_pages#help', via: :get
  match '/terms', to: 'static_pages#terms', via: :get
  match '/contact', to: 'static_pages#contact', via: :get
  match '/my_posts', to: 'posts#my_posts', via: :get
end