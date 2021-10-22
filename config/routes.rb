Rails.application.routes.draw do
  get 'about/index'
  resources :posts
  resources :subscribers
  get 'promo/index'

  # root 'promo#index'
  get 'posts/index'
  get 'about/index'


  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  # root 'promo#index'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
