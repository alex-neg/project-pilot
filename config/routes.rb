Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    resources :sites
    resources :samples
    resources :small_finds
  end
end
