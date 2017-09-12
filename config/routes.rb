Rails.application.routes.draw do
  get 'places/index'

  resources :articles do
  	resources :comments
  end

  resources :places

  root 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
