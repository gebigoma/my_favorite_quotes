Rails.application.routes.draw do
  get 'quotes/index'
  get 'quotes/show'
  get 'quotes/new'
  get 'quotes/create'
  get 'quotes/edit'
  get 'quotes/update'
  get 'quotes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
