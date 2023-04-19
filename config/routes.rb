Rails.application.routes.draw do

  resources :suppliers
  resources :banks, path: '/'

end
