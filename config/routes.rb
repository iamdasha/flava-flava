Rails.application.routes.draw do
  resources :filtertags
  resources :artists
  get 'about/index'
  resources :posts
  resources :subscribers
  get 'promo/index'

  # root 'promo#index'
  get 'posts/index'
  get 'about/index'


  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'artists', to: 'artists#index'
  get 'posts', to: 'posts#index'
  get 'filtertags', to: 'filtertags#index'

  # root 'promo#index'

  get 'artists/index'

  root 'artists#index'
  # root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
