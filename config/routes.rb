Rails.application.routes.draw do

  devise_for :owners
  devise_for :customers
  resources :posts
  root 'posts#index'
  get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'

end
