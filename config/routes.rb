Rails.application.routes.draw do
  
  # Home page
  root :to => "main#main"
  
  # Contacts
  get "/contacts", to: "posts#contacts"

  # All posts
  resources :posts
end
