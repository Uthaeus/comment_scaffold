Rails.application.routes.draw do

  resources :test_ads
  resources :recipes
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs

  get 'pages/about'

  get 'pages/contact'

  root to: 'pages#home'
end
