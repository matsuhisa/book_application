Rails.application.routes.draw do
  resources :campaign_applications
  # resources :campaign_applications, only: [:index, :create, :new] do
  #   collection do
  #     post '/confirm', to: 'campaign_applications#confirm', as: :confirm
  #     get '/complete', to: 'campaign_applications#complete', as: :complete
  #   end
  # end
end
