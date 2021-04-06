Rails.application.routes.draw do
  
  # Home page (en)
  root :to => "main#main"

  # Projects (en)
  get "/projects", to: "main#projects"

  # About (en)
  get "/about", to: "main#about"

  # UA
  scope :ua do
    # Home page
    get "/", to: "ua#index"

    # About
    get "about", to: "ua#about"
    
    # Projects
    get "projects", to: "ua#projects"

    scope :blog do

      # Feature
    get "feature", to: "ua_blog#feature"
    end
  end
  
end
