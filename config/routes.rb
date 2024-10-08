Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  get '/', to: 'welcome#index', as: 'root'

  get '/brands', to: 'brands#index'
  get '/brands/new', to: 'brands#new', as: 'new_brand'
  post '/brands', to: 'brands#create'

  get '/watches', to: 'watches#index'
  get '/watches/new', to: 'watches#new', as: 'new_watch'
  post '/watches', to: 'watches#create'

  get '/users/new', to: 'users#new', as: 'new_user_registration'
  post '/users', to: 'users#create'
end
