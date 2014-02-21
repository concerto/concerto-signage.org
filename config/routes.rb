Rails.application.routes.draw do
  devise_for :users

  resources :categories

  resources :pages

  root to: 'pages#show', id: 'frontpage'

end
