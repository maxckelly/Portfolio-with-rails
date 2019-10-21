Rails.application.routes.draw do

  # All static routes
  get "/", to: "pages#home", as: "root"
  get "/experiences", to: "pages#experiences"

  get "/blog", to: "pages#blog"
  get "/about", to: "pages#about"

  # Portfolio Routes
  get "/portfolio", to: "portfolios#index", as: "portfolio"
  get "/portfolio/new", to: "portfolios#new", as: "new_portfolio"
  post "/portfolios", to: "portfolios#create"

  # Contact me routes
  get "contact-me", to: "messages#new", as: "new_message"
  post "contact-me", to: "messages#create", as: "create_message"
  resources :articles
end
