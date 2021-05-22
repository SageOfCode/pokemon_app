Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  resources :pokemon, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :pokemon, only: :index
    end
  end
end
