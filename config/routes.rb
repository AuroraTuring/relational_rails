Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  root "competitions#index" # controller-#-action/method

  get "/competitions", to: "competitions#index"
  get "/competitions/:id", to: "competitions#show"

  get "/competitions/:id/gerbils", to: "competition_gerbils#index"

  get "/gerbils", to: "gerbils#index"
  get "/gerbils/:id", to: "gerbils#show"

end
