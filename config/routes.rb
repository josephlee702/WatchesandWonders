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

  resources :users, only: [:new, :create, :show, :destroy] do
    resources :watches, only: [:create, :destroy]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/about', to: 'static_pages#about'

end
