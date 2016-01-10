Rails.application.routes.draw do
  get 'welcome/index'

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
