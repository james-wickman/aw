Rails.application.routes.draw do

  resources :videos

  get 'content/left_arrow'

  get 'content/right_arrow'

  get 'content/featured_works'

  get 'content/contact_us'

  post 'content/send_email'

  devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
