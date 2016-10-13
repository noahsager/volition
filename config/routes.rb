Rails.application.routes.draw do
  get 'pages/nice_job'

  root 'users#new'

  get '/mockups/today'     => 'mockups#today'
  get '/mockups/tomorrow'  => 'mockups#tomorrow'
  get '/mockups/reflect'   => 'mockups#reflect'
  get '/mockups/nice_job'  => 'mockups#nice_job'
  get '/mockups/dashboard' => 'mockups#dashboard'

  get '/nice_job'          => 'pages#nice_job', as: :nice_job
  get '/welcome'           => 'pages#welcome', as: :welcome

  get '/dashboard'         => 'dashboard#show', as: :dashboard
  get '/today'             => 'today#show', as: :today
  get '/today/new'         => 'today#new', as: :new_today
  post '/today'            => 'today#create'
  get '/tomorrow'          => 'tomorrow#new', as: :tomorrow
  post '/tomorrow'         => 'tomorrow#create'
  get '/reflect'           => 'reflections#new', as: :reflect
  get '/login'             => 'sessions#new', as: :login
  post '/login'            => 'sessions#create'
  delete '/logout'         => 'sessions#destroy', as: :logout

  resources :todos, only: [:update]
  resources :reflections, only: [:create]
  resources :users, only: [:new, :create]
end
