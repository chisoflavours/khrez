Rails.application.routes.draw do
  
  root 'page#index'

  get 'page/about'

  get 'page/privacypolicy'

  get 'page/termsandconditions'

  get 'page/listyourvenue'
  
  resources :venues

end
