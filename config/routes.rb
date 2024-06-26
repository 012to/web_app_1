Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'top#index'
  # Defines the root path route ("/")
  # root "articles#index"
  get 'contacts', to: 'contacts#new'
  resources :contacts, only: [:new, :create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'

  resources :posts, except: [:show] do
    get :search, on: :collection
    resource :like, only: %i[create destroy]
  end

  get 'posts/:id', to: 'posts#show', as: 'post_show'


  resources :users, only: [:show] do
    member do
      get :edit_notification_settings
      patch :update_notification_settings
    end
  end

  get '/roulette', to: 'roulette#show'
end
