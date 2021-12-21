Rails.application.routes.draw do
  devise_for :users
  resources :cloths
  resources :types
  resources :brands
  resources :styles
  resources :filtertags
  resources :artists
  get 'about/index'
  resources :posts
  resources :subscribers
  get 'promo/index'

  resources :posts do
    resources :favorites
  end

  resources :artists do
    resources :artistfavorites
  end

  # root 'promo#index'
  get 'posts/index'
  get 'about/index'


  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'artists', to: 'artists#index'
  get 'posts', to: 'posts#index'
  get 'cloths', to: 'cloths#index'
  get 'filtertags', to: 'filtertags#index'
  get 'styles', to: 'styles#index'
  get 'brands', to: 'brands#index'
  get 'types', to: 'types#index'

  # root 'promo#index'

  get 'artists/index'
  get 'artists/:id' => 'artists#show'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

  root 'artists#index'
  # root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
