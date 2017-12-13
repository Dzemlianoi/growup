Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :courses

  get 'menu', to: 'pages#menu', as: 'menu'
  root to: 'pages#menu'
end
