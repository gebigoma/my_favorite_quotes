Rails.application.routes.draw do
  root 'quotes#index'
  get '/quotes' => 'quotes#index'
  get '/quotes/new' => 'quotes#new' 
  get '/quotes/:id' => 'quotes#show', as: :quote #this is an alias
  post '/quotes' => 'quotes#create'
end
