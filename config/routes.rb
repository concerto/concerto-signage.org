Rails.application.routes.draw do
  resources :categories

  get 'pages/list_v1help'
  get 'pages/list_help'
  get 'pages/list_announcements'
  get 'pages/styleguide'
  root to: 'pages#show', id: 'frontpage'

  resources :pages

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
  	get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  post '/tinymce_assets' => 'tinymce_assets#create'

end
