Rails.application.routes.draw do
  resources :powers
  resources :heroines
  #, only: [:index]  
end
