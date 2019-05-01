Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'keyboard' => 'api#api_init'
  post 'message' => 'api#api_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
