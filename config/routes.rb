Rails.application.routes.draw do
  resources :public_talks
  resources :questions
  resources :tasks
  resources :jobs
  resources :internships
  get 'users/show'

  devise_for :users

  root 'internships#index'

  resources :internships

  resources :internships_steps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
