Rails.application.routes.draw do
  resources :public_talks
  resources :questions
  resources :tasks

  resources :internships do
    member do
      get "new_step_2", action: :new_step_2
      get "new_step_3", action: :new_step_3
    end

    collection do
      get "new_step_1", action: :new_step_1
    end
  end

  resources :jobs do
    member do
      get "new_step_2", action: :new_step_2
      get "new_step_3", action: :new_step_3
    end

    collection do
      get "new_step_1", action: :new_step_1
    end
  end

  resources :tasks do
    member do
      get "new_step_2", action: :new_step_2
    end

    collection do
      get "new_step_1", action: :new_step_1
    end
  end

  get 'users/show'

  devise_for :users

  root 'internships#new_step_1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
