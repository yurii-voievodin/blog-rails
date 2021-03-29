Rails.application.routes.draw do
  
  # Home page
  root :to => "main#main"

  # Projects
  get "/projects", to: "main#projects"
  
  # Contacts
  get "/contact", to: "main#contact"

  # Home page in Ukrainian
  get "/ua", to: "main#ua"

  # About
  get "/about", to: "pages#about"

  # All posts
  resources :posts
end
