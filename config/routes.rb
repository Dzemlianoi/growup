Rails.application.routes.draw do
  devise_for :users, { controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } }.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  resources :courses
  root to: 'home#index'
end
