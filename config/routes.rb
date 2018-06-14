Rails.application.routes.draw do
  resources :speakers, only: :index
end
