Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html

  resources :admins
  resources :commoncds
  resources :exeqs
  resources :exmths
  resources :expts
  resources :extys
  resources :gyms
  resources :gymadms
  resources :gymusers
  resources :reviews
  resources :users

  root 'welcome#index'
end
