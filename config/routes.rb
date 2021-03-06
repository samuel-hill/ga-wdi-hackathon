Contacts::Application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: 'omniauth_callbacks'}

  resources :contacts
  resources :collages
  get 'apicalls/instagram', to:  'apicalls#instagram', as: 'instagram_api'
   get 'apicalls/facebook', to:  'apicalls#facebook', as: 'facebook_api'
  get 'apicalls/facebook_auth', to:  'apicalls#facebook_auth', as: 'facebook_auth'

  root to: 'contacts#index'
end
