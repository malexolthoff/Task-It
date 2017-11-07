Rails.application.routes.draw do
  devise_for :users
  resources :companies do
    resources :internships
  end

  resources :internships, only: [:index, :show] do
    resources :applications, only: [:create]
  end

root 'applications#index'
end
