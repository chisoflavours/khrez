Rails.application.routes.draw do
  
  devise_for :admins
  root 'page#index'

  get 'page/about'

  get 'page/privacypolicy'

  get 'page/termsandconditions'

  get 'page/listyourvenue'
  
  resources :venues

end
