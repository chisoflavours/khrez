Rails.application.routes.draw do
  
  devise_for :admins


  get 'page/about'

  get 'page/privacypolicy'

  get 'page/termsandconditions'

  get 'page/listyourvenue'
  
  get 'page/all'
  
  # root :to => 'page#soon'
  
   authenticated :admin do
     root :to => 'venues#index', as: :authenticated_root
   end
   
   root :to => 'page#index'
   
   get 'page/index'
  
  resources :venues

end
