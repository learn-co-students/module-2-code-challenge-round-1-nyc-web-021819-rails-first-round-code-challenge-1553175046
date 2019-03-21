Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create]
  # get "/heroines/:id", to: "heroines#show"

  # get "/search", to: "powers#find_by_power", as: "find_by_power"

end
