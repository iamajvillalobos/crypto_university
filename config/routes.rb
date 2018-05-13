Rails.application.routes.draw do
  root to: "classes#index"
  resources :classes, only: [:index, :show]

  namespace :admin do
      resources :professors
      resources :ratings
      resources :subjects
      root to: "professors#index"
    end
end
