Rails.application.routes.draw do
  
  resources :users, only: [:index, :new, :create]
  #   member do
  #     get "address"
  #     post "confirm_address"
  #     get "donate"
  #     post "confirm_donate"
  #   end
    
  #   # collection do
  #   # end
  # end

  root "users#index"
  
end

