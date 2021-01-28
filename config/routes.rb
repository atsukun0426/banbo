Rails.application.routes.draw do
  get 'organizers/show'
  root to: 'home#top'
  devise_for :organizers, controllers: {
    sessions: 'organizers/sessions',
    passwords: 'organizers/passwords',
    registrations: 'organizers/registrations',
  }
  resources :organizers, only: [:index, :show]
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }
  resources :users, only: [:index, :show] do
    get :likes, on: :collection
  end
  resources :recruitments, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :requests, only: [:create, :destroy]
    resource :likes, only: [:create, :destroy]
  end
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end
