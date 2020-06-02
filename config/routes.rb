Rails.application.routes.draw do
  
  resources :users do 
    member do
      get "address"
    end
  end

  root "users#index"
  
end
