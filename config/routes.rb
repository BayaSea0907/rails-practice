Rails.application.routes.draw do
  root 'issues#index'

  resources :issues, only: %i(new create show index)
  resources :categories, only: %i(edit update show)
end
