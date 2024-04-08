Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
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

  resources :posts do
    resource :like, only: %i[create destroy]
  end
  resources :users, only: :show do
  end

  get '/roulette', to: 'roulette#show'
end
