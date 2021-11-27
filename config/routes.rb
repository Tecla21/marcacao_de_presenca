Rails.application.routes.draw do
  resources :estudantes
  resources :turmas
  devise_for :utilizadores
  root 'home#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
