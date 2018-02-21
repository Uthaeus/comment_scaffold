Rails.application.routes.draw do

  resources :meetings


  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs

  get 'pages/about'

  get 'pages/contact'

  root to: 'pages#home'

  mount Commontator::Engine => '/commontator'
end
