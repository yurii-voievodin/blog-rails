Rails.application.routes.draw do
  
  # Home page (en)
  root :to => "main#main"

  # Projects (en)
  get "/projects", to: "main#projects"

  # Personal (en)
  get "/personal", to: "main#personal", :defaults => { :format => 'html' }

  # Timeline (en)
  get "/timeline", to: "main#timeline", :defaults => { :format => 'html' }

  # Posts
  scope :posts do
    get "rails-static-pages", to: "posts#static", :defaults => { :format => 'html' }
  end

  # UA
  scope :ua do
    # Home page
    get "/", to: "ua#index", :defaults => { :format => 'html' }

    # Personal
    get "personal", to: "ua#personal", :defaults => { :format => 'html' }

    # Blog
    get "blog", to: "ua#blog", :defaults => { :format => 'html' }

    scope :blog do

      # Feature
    get "feature", to: "ua_blog#feature", :defaults => { :format => 'html' }
    get "low-data-mode", to: "ua_blog#low_data_mode", :defaults => { :format => 'html' }
    end
  end

  # Pages
  scope :pages do
    # Bootstrap 5 Timeline
    get "bootstrap_5_timeline", to: "pages#bootstrap_timeline", :defaults => { :format => 'html' }

    get "tesla_timeline", to: "pages#tesla_timeline", :defaults => { :format => 'html' }
  end
  
end
