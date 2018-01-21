Rails.application.routes.draw do
  resources :blogs

  get 'pages/about'

  get 'pages/contact'

  root to: 'pages#home'
end
