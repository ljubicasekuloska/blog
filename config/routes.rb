Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'articles/index'
  # get 'users/index'

  # post 'orders/create'
  # post '/orders', to: 'orders#create'

  # get '/articles', to: 'articles#index'
  # post '/articles', to: 'articles#create'
  # get '/articles/new', to: 'articles#new', as: :new_article
  # get '/articles/:id', to: 'articles#show', as: :article
  # get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch '/articles/:id', to: 'articles#update'
  # delete '/articles/:id', to: 'articles#destroy'

  root to: 'articles#index'

  resources :articles do
    resources :comments
  end

  get 'users/signup', to: 'users#new'
  resources :users, except: :new

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
