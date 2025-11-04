Rails.application.routes.draw do
  root "users#index"
  resources :users do
    resources :projects do
      resources :sites do
        resources :excavation_units
      end
    end
  end
end
