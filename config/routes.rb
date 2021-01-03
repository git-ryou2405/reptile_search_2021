Rails.application.routes.draw do
  root 'static_pages#top'
  
  devise_for :shops
  
  resources :shops
end
