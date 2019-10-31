Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 
 
 resources:team
 
 resources:author
 
 resources:contact

 resources:city

 resources:user

 resources :sessions, only: [:new, :create, :destroy]

 resources :like 

 resources :gossip do
  resources :like
  resources :comment
  get :display
 end
 
  

get '/', to: 'gossip#index'

end



