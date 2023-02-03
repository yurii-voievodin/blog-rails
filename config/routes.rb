Rails.application.routes.draw do
  
  # Home page (en)
  root :to => "main#main"

  # Projects (en)
  get "/projects", to: "main#projects"

  # Personal (en)
  get "/personal", to: "main#personal"

  # Timeline (en)
  get "/timeline", to: "main#timeline"

  # UA
  scope :ua do
    # Home page
    get "/", to: "ua#index"

    # Personal
    get "personal", to: "ua#personal"

    # Blog
    get "blog", to: "ua#blog"

    scope :blog do

      # Feature
    get "feature", to: "ua_blog#feature"
    get "low-data-mode", to: "ua_blog#low_data_mode"
    end
  end

  # Pages
  scope :pages do
    # Bootstrap 5 Timeline
    get "bootstrap_5_timeline", to: "pages#bootstrap_timeline"

    get "tesla_timeline", to: "pages#tesla_timeline"
  end
  
end
