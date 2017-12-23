Rails.application.routes.draw do

  get 'finals/new'

  devise_for :users, controllers: { registrations: "registrations" }
  devise_for :chisoms
  devise_for :admins, controllers: { registrations: "admins/registrations" }
  resources :admins
  get 'page/about'
  get 'page/privacypolicy'
  get 'page/termsandconditions'
  get 'page/aftersignup'
  # root :to => 'page#soon'
   authenticated :admin do
     root :to => 'venues#dashboard', as: :authenticated_root
   end

   get 'page/soon'
   get 'page/afterpay'
   get 'page/listyourvenue'
   get 'page/dashboard'
   get 'bookings/message'
  resources :venues do
      resources :comments
      resources :bookings 
  end
  resources :bookings do
    resources :chats
    resources :offers
    resources :finals
  end
   root :to => 'page#index'

  
end
