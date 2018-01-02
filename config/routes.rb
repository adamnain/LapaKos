Rails.application.routes.draw do
  get 'images/index'

  get 'images/create'

  devise_for :penggunas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'home#index'
  get '/', to: 'home#index'
  get '/tes', to: 'home#tes'
  get '/detail', to: 'kosts#detail'
  get '/inbox', to: 'kosts#inbox'
  get '/outbox', to: 'kosts#outbox'
  resources :kosts
  resources :messages
  resources :images, only: [:index, :create]
end
