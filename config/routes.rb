Rails.application.routes.draw do

  resources :suppliers
  resources :banks, path: '/'

  namespace :authentication, path: '', as: ''do
    resources :users, only: [:new, :create] 
    resources :sessions, only: [:new, :create]
  end

end
