Rails.application.routes.draw do
  get "sites/index"
  get "sites/show"
  get "sites/new"
  get "sites/edit"
  root "projects#index"
  resources :projects do
    resources :sites
  end
end
