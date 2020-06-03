Rails.application.routes.draw do
  
  resources :users do 
    member do
      get "address"
    end

    collection do
      post "confirm_address"
      post "donate"
    end
  end

  root "users#index"
  
end
