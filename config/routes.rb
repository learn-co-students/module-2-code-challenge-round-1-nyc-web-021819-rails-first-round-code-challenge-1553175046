Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :new, :show, :create]  

  get 'heroines/filtered', to: 'heroines#filtered', as: 'filtered'
end
