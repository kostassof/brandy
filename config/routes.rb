Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  scope module: 'brands' do
    resources :brands
  end

  scope module: 'users' do
    resources :users, path: 'admin', as: 'admin', only: [:show, :update]
    get '/sign_up', to: 'sign_ups#new', as: 'sign_up'
    post '/sign_up', to: 'sign_ups#create'
  end
end
