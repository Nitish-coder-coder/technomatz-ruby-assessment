Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      post 'send_url_login', to: 'send_login_url#send_url_login'
    end
  end  

end
