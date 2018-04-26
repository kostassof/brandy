Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  scope module: 'users' do
    resources :user_sessions, only: [:create, :destroy]
  end

  delete '/sign_out', to: 'users/user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'users/user_sessions#new', as: :sign_in

  scope module: 'brands' do
    resources :brands
  end

  scope module: 'users' do
    resources :users, path: 'admin', as: 'admin', only: [:show, :update]
    get '/sign_up', to: 'sign_ups#new', as: 'sign_up'
    post '/sign_up', to: 'sign_ups#create'
  end
end
