Rails.application.routes.draw do
  resources :speedforce_users

  root 'speedforce_users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
