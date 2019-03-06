Rails.application.routes.draw do

  # Home page
  root :to => "posts#show", :id => '1'

  # All posts
  resources :posts
end
