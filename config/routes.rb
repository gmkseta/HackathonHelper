Rails.application.routes.draw do
  get 'keyboard' => 'api#api_init'
  post 'message' => 'api#api_message'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
