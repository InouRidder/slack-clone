Rails.application.routes.draw do

  devise_for :users
  root to: 'index#chat_rooms'
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
