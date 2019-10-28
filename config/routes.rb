Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'

  get'/home/:id',to: 'dynamic_pages#id',as: :homeid
  get'/home/',to: 'dynamic_pages#id'
  get'/',to: 'dynamic_pages#id'
  get '/gossip/:id', to: 'dynamic_pages#gossip',as: :gossip
  get '/author/:id',to: 'dynamic_pages#author',as: :author
 

end
