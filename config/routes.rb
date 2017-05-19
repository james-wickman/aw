Rails.application.routes.draw do

  resources :videos

  get 'content/works'

  get 'content/featured_works'

  get 'content/contact_us'

  get 'home/index'

  devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
