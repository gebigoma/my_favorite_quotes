Rails.application.routes.draw do
  root 'quotes#index'
  get '/quotes' => 'quotes#index'
  get '/quotes/:id' => 'quotes#show'
end
