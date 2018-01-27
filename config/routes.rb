Rails.application.routes.draw do

  # Devise
  devise_for :users, controllers: { registrations: "registrations" }
  devise_for :admins, controllers: { registrations: "admins/registrations" }
  devise_for :chisoms
  resources :admins
  
  # Most Routes
  get 'finals/new'
  get 'page/about'
  get 'page/privacypolicy'
  get 'page/termsandconditions'
  get 'page/aftersignup'
  get 'page/soon'
  get 'page/afterpay'
  get 'page/listyourvenue'
  get 'page/dashboard'
  get 'bookings/message'
  
  # Root Paths
  authenticated :admin do
     root :to => 'venues#dashboard', as: :authenticated_admin_root
  end
  
  root :to => 'page#index'
 
  # Resources
  resources :venues do
    resources :comments
    resources :bookings 
  end
  resources :bookings do
    resources :chats
    resources :offers
    resources :finals
  end
  
end
