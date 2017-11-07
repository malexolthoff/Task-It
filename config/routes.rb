Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :companies do
    resources :internships
  end

  resources :internships, only: [:index, :show] do
    resources :applications, only: [:create]
  end
  resources :users
root 'pages#home'
end
