Rails.application.routes.draw do
  
  resources :donations, only: [:index, :new, :create]
  
  root "donations#index"
  
end

