Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root  'top#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
