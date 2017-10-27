Rails.application.routes.draw do

  devise_for :users
  devise_for :chisoms
  devise_for :admins, controllers: { registrations: "registrations" }
  resources :admins
  
  get 'page/about'

  get 'page/privacypolicy'

  get 'page/termsandconditions'

  get 'page/listyourvenue'
  
  get 'page/aftersignup'
  
  # root :to => 'page#soon'
  
   authenticated :admin do
     root :to => 'venues#dashboard', as: :authenticated_root
   end
   
   get "page/:page" => "venues#index"
   root :to => 'page#index'
   
   get 'page/index'
   get 'page/afterpay'
   get 'page/dashboard'
   get 'bookings/message'
  resources :venues do
      resources :comments
      resources :bookings
  end
  

end
