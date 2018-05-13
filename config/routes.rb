Rails.application.routes.draw do
  root to: "classes#index"
  resources :classes, only: [:index, :show] do
    resources :professor, only: [:show] do
      resources :ratings, only: [:new, :create]
    end
  end

  namespace :admin do
      resources :professors
      resources :ratings
      resources :subjects
      root to: "professors#index"
    end
end
