Rails.application.routes.draw do
  resources :searches
  get 'picture/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'picture#index'
end
