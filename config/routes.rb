Rails.application.routes.draw do
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :netflixes, only: [ :index ]
    end
  end
end
