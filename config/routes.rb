Rails.application.routes.draw do
  delete '/banks/:id', to:  'banks#destroy'
  patch '/banks/:id', to: 'banks#update'
  post '/banks', to: 'banks#create'
  get '/banks/new', to: 'banks#new', as: :new_bank
  get '/banks', to: 'banks#index'
  get '/banks/:id', to: 'banks#show', as: :bank
  get '/banks/:id/edit', to: 'banks#edit', as: :edit_bank
end
