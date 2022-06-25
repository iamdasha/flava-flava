Rails.application.routes.draw do
  get 'mainpage/index'
  get 'search/index'
  mount Ckeditor::Engine => '/ckeditor'
  resources :looks
  resources :collections
  devise_for :users
  resources :cloths
  resources :brands
  resources :filtertags do
    resources :looks
  end
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

  resources :collections do
      resources :colectfavorites
  end

  resources :looks do
    resources :lookfavorites
    resources :filtertags
  end

  resources :cloths do
      resources :clothfavorites
  end

  # root 'promo#index'
  get 'posts/index'
  get 'posts/indexadmin'
  get 'about/index'
  get 'mainpage/index'
  get 'search/index'


  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  get 'artists', to: 'artists#index'
  get 'posts', to: 'posts#index'
  get 'cloths', to: 'cloths#index'
  get 'filtertags', to: 'filtertags#index'
  get 'brands', to: 'brands#index'
  get 'collections', to: 'types#index'
  get 'looks/index', to: 'styles#index'
  get 'search', to: 'search#index'


  # root 'promo#index'

  get 'artists/index'
  get 'artists/:id' => 'artists#show'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

  root 'mainpage#index'
  # root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
