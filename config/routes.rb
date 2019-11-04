Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :responses
      resources :users 
      resources :essays
      resources :sessions, only: [:create]
    end
  end
end