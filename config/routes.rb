Rails.application.routes.draw do
  
  # Home page
  root :to => "main#main"

  # Projects
  get "/projects", to: "main#projects"
  
  # Contacts
  get "/contact", to: "main#contact"

  # All posts
  resources :posts
end
