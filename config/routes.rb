Rails.application.routes.draw do
  
  devise_for :admins


  get 'page/about'

  get 'page/privacypolicy'

  get 'page/termsandconditions'

  get 'page/listyourvenue'
  
  
   authenticated :admin do
     root :to => 'venues#index', as: :authenticated_root
   end
   
   root :to => 'page#index'
   
  
  resources :venues

end
