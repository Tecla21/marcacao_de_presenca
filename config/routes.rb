Rails.application.routes.draw do
  resources :marcacoes do
    resources :marcacao_do_estudantes_na_turma, except: [:index,:update, :destroy, :create, :new, :show]
  end
  resources :estudantes
  resources :turmas
  devise_for :utilizadores
  root 'home#site'
  get 'home/dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
