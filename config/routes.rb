Rails.application.routes.draw do
  devise_for :utilizadores
  root 'home#site'
  get 'home/dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
