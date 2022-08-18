Rails.application.routes.draw do
  post "/users", to: "users#create"
  get "user/:id", to: "users#show"
end
