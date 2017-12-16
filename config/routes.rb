Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :questions do
    resources :answers
  end
end
