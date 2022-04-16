Rails.application.routes.draw do
  devise_for :users
 root to: 'homes#top'
 get 'abut' => 'homes#abut'
 resources :books, only: [:create, :index, :show, :destroy]
 resources :users, only: [:show, :edit, :update, :index]

end
