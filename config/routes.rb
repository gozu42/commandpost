Rails.application.routes.draw do

  get 'main/index'

  root 'main#index'

  match '/map', to: 'main#map', via: 'get'

end
