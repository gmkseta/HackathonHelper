Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  get 'mobile/index'
  get '/castle55302795'=> 'castlejunny#index'

  get 'castlejunny/ban'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'keyboard' => 'api#api_init'
  post 'message' => 'api#api_message'
  root "castlejunny#ban"
  delete 'mobile/finger_snap/:id' => 'mobile#finger_snap', as: 'finger_snap'
  get 'ranker' => 'castlejunny#ranker'
  get "*path" => 'castlejunny#ban'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
