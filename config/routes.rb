Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :companies do
    resources :internships do
      resources :applications, only: [:create]
    end
  end

  resources :internships, only: [:show, :update]
  resources :users do
    get 'messages', to: 'applications#messages'
  end

  get 'messages', to: 'applications#messages'

  get 'companymessages', to: 'applications#company_messages'

end
