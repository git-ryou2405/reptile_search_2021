Rails.application.routes.draw do
  root 'static_pages#top'
  
  devise_for :shops, controllers: {
    omniauth_callbacks: 'shops/omniauth_callbacks',
    registrations: 'shops/registrations',
    sessions: 'shops/sessions',
    passwords: 'users/passwords'
  }
  
  resources :shops
end
