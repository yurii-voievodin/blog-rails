Rails.application.routes.draw do
  
  # Home page (en)
  root :to => "main#main"

  # Projects (en)
  get "/projects", to: "main#projects"

  # Home page (ua)
  get "/ua", to: "main#ua"

  # About (en)
  get "/about", to: "pages#about"
  
end
