Rails.application.routes.draw do
  resources :servicos
  root to: 'principal#index'
  devise_for :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
