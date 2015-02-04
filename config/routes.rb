Rails.application.routes.draw do
  namespace :api, :defaults => { :format => :json } do
    resources :incidents, only: [:create]
  end

  get "/incidents/:id" => "incidents#show", :as => :incidents, defaults: { format: 'text' }
end
