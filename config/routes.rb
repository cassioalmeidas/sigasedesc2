Rails.application.routes.draw do
  root to: 'principal#index'
  devise_for :usuarios
  resources :servicos
  resources :tecnicos

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
