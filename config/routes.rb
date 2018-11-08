Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  resources :users, :appliances   #if write resource without s will not route to index
end
