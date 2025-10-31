Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    resources :sites do
      resources :excavation_units
    end
  end
end
