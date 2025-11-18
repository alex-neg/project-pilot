Rails.application.routes.draw do
  get "contexts/index"
  get "contexts/show"
  get "contexts/new"
  get "contexts/create"
  get "contexts/edit"
  get "contexts/update"
  get "contexts/destroy"
  root "projects#index"
  resources :users
  resources :projects do
    resources :sites do
      resources :excavation_units do
        resources :contexts
      end
    end
  end
end
