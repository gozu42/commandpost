Rails.application.routes.draw do

  get 'main/index'

  root 'main#index'

  resources :markers
  
  match '/map', to: 'main#map', via: 'get'
  match '/createmarker', to: 'main#createmarker', via: 'get'
  match '/checkmarkers', to: 'main#checkmarkers', via: 'get'

end
