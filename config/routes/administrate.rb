namespace :admin do
  resources :products
  resources :users

  root to: "users#index"
end
