Rails.application.routes.draw do
  get 'user/login_form'
  get 'user/login'
  get 'users/login_form'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "login" => "user#login_form"

  post "login" => "user#login"
end
