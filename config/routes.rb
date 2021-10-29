Rails.application.routes.draw do
  
  # Home page (en)
  root :to => "main#main"

  # Projects (en)
  get "/projects", to: "main#projects"

  # Personal (en)
  get "/personal", to: "main#personal"

  # UA
  scope :ua do
    # Home page
    get "/", to: "ua#index"
    
    # Projects
    get "projects", to: "ua#projects"

    # Personal
    get "personal", to: "ua#personal"

    scope :blog do

      # Feature
    get "feature", to: "ua_blog#feature"
    end
  end
  
end
