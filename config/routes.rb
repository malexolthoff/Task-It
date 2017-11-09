Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :companies do
    resources :internships do
      resources :applications, only: [:create]
      get 'messages', to: 'applications#company_messages'
    end
  end

  resources :internships, only: [:index, :show]
  resources :users do
    get 'messages', to: 'applications#messages'
  end
root 'pages#home'
end
