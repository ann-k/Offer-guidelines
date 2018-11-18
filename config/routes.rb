Rails.application.routes.draw do
  resources :internships
  get 'users/show'

  devise_for :users

  root 'users#show'

  resources :internships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
