Rails.application.routes.draw do
  get 'castlejunny/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'keyboard' => 'api#api_init'
  post 'message' => 'api#api_message'
  root "castlejunny#index"
  get "*path" => 'castlejunny#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
