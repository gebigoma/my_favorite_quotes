Rails.application.routes.draw do
  root 'quotes#index'
  get '/quotes' => 'quotes#index'
end
