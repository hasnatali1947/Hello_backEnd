Rails.application.routes.draw do
  root 'api/v1/greetings#random' # Add this line

  namespace :api do
    namespace :v1 do
      resources :greetings, only: [:index] do
        collection do
          get :random
        end
      end
    end
  end
end
