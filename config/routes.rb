Rails.application.routes.draw do
  resources :categories
 
  get 'pages/list_v1help'
  get 'pages/list_help'
  get 'pages/list_blog'
  resources :pages 
  root to: 'pages#show', id: 'frontpage'

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  devise_scope :user do
  	get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
  	get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end
