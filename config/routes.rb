Rails.application.routes.draw do

  get "index" => 'phamilia#index'
  get "control_test" => 'phamilia#control_test'
  post "send_message" => 'phamilia#send_message'
  get "get_message" => 'phamilia#get_message'

  namespace :api, {  format: 'json' } do
    resources :house
    resources :domains do
       resources :sites
    end
    post 'login' => 'user_sessions#create'
    delete 'logout' =>'user_sessions#destroy'
  end

  resources :apis
    get '/api/SITE=:site/AREA=:area/SIZE=:size' => 'apis#index'

end
