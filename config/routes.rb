Rails.application.routes.draw do
  root "projects#test"
  resources :projects do
    resources :sites
    resources :samples
  end
end
