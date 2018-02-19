Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end

# Ajax
Rails.application.routes.draw do
  get 'show/:sku', to: 'home#show'
end