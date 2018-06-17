Rails.application.routes.draw do
  root 'quotes#index'
  get '/quotes' => 'quotes#index'
  get '/quotes/new' => 'quotes#new', as: :new_quote
  get '/quotes/:id' => 'quotes#show', as: :quote #this is an alias
  post '/quotes' => 'quotes#create'
  get '/quotes/:id/edit' => 'quotes#edit', as: :edit_quote
  patch 'quotes/:id' => 'quotes#update'
  delete 'quotes/:id' => 'quotes#destroy'
end
