ConcertoSignage::Application.routes.draw do
  devise_for :users
  resources :categories
  resources :pages
  root :to => "pages#frontpage"
  resources :pages, :path => ''
end
