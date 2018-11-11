Rails.application.routes.draw do
  devise_for :users
  root "appliances#index"

  resources :users, :appliances   #if write resource without s will not route to index
  get "/appliances/:id/borrow", to: "appliances#borrow"
end
