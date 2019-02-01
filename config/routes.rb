Rails.application.routes.draw do

  devise_for :users

  root 'welcome#index'

  get 'welcome/index'

  resources :offers do
    resources :questions
  end

  resources :districts, only: %i[show]
  
  resources :users, only: %i[show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
