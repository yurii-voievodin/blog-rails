Rails.application.routes.draw do
  
  # Home page
  root :to => "posts#show", :id => '1'
  
  # Contacts
  get "/contacts", to: "posts#contacts"

  # All posts
  resources :posts
end
