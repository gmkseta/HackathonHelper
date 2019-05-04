Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  get 'mobile/index'
  get 'castlejunny/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'keyboard' => 'api#api_init'
  post 'message' => 'api#api_message'
  root "castlejunny#index"
  delete 'mobile/finger_snap/:id' => 'mobile#finger_snap', as: 'finger_snap'
  get "*path" => 'castlejunny#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
