Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
  }
  resources :users, only: [:index, :show]
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end
