Rails.application.routes.draw do

  get "index" => 'phamilia#index'
  get "control_test" => 'phamilia#control_test'
  post "send_message" => 'phamilia#send_message'

end
