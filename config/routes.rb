Rails.application.routes.draw do

  # All static routes
  get "/", to: "pages#home", as: "root"
  get "/experiences", to: "pages#experiences"
  get "/portfolio", to: "pages#portfolio"
  get "/blog", to: "pages#blog"
  get "/about", to: "pages#about"

  # Contact me routes
  get "contact-me", to: "messages#new", as: "new_message"
  post "contact-me", to: "messages#create", as: "create_message"
  resources :articles
end
