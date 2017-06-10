                   Prefix Verb   URI Pattern                       Controller#Action
                   videos GET    /videos(.:format)                 videos#index
                          POST   /videos(.:format)                 videos#create
                new_video GET    /videos/new(.:format)             videos#new
               edit_video GET    /videos/:id/edit(.:format)        videos#edit
                    video GET    /videos/:id(.:format)             videos#show
                          PATCH  /videos/:id(.:format)             videos#update
                          PUT    /videos/:id(.:format)             videos#update
                          DELETE /videos/:id(.:format)             videos#destroy
                          GET    /robots.:format                   home#robots
       content_left_arrow GET    /content/left_arrow(.:format)     content#left_arrow
      content_right_arrow GET    /content/right_arrow(.:format)    content#right_arrow
            content_works GET    /content/works(.:format)          content#works
   content_featured_works GET    /content/featured_works(.:format) content#featured_works
       content_contact_us GET    /content/contact_us(.:format)     content#contact_us
               home_index GET    /home/index(.:format)             home#index
       content_send_email POST   /content/send_email(.:format)     content#send_email
        new_admin_session GET    /admins/sign_in(.:format)         admins/sessions#new
            admin_session POST   /admins/sign_in(.:format)         admins/sessions#create
    destroy_admin_session DELETE /admins/sign_out(.:format)        admins/sessions#destroy
       new_admin_password GET    /admins/password/new(.:format)    devise/passwords#new
      edit_admin_password GET    /admins/password/edit(.:format)   devise/passwords#edit
           admin_password PATCH  /admins/password(.:format)        devise/passwords#update
                          PUT    /admins/password(.:format)        devise/passwords#update
                          POST   /admins/password(.:format)        devise/passwords#create
cancel_admin_registration GET    /admins/cancel(.:format)          devise/registrations#cancel
   new_admin_registration GET    /admins/sign_up(.:format)         devise/registrations#new
  edit_admin_registration GET    /admins/edit(.:format)            devise/registrations#edit
       admin_registration PATCH  /admins(.:format)                 devise/registrations#update
                          PUT    /admins(.:format)                 devise/registrations#update
                          DELETE /admins(.:format)                 devise/registrations#destroy
                          POST   /admins(.:format)                 devise/registrations#create
                     root GET    /                                 home#index
