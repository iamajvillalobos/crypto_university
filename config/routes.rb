Rails.application.routes.draw do
  namespace :admin do
      resources :professors
      resources :ratings
      resources :subjects

      root to: "professors#index"
    end
end
